# furyvisor Quick Start

`furyvisor` is a small process manager around Furychain binaries that monitors the governance module via stdout to see if there's a chain upgrade proposal coming in. If it see a proposal that gets approved it can be run manually or automatically to download the new code, stop the node, run the migration script, replace the node binary, and start with the new genesis file.

## Installation

Run:

`make build`

## Command Line Arguments And Environment Variables

All arguments passed to the `furyvisor` program will be passed to the current daemon binary (as a subprocess).
It will return `/dev/stdout` and `/dev/stderr` of the subprocess as its own. Because of that, it cannot accept
any command line arguments, nor print anything to output (unless it terminates unexpectedly before executing a
binary).

`furyvisor` reads its configuration from environment variables:

- `DAEMON_HOME` is the location where upgrade binaries should be kept (e.g. `$HOME/.furyd`).
- `DAEMON_NAME` is the name of the binary itself (eg. `furyd`, etc).
- `DAEMON_ALLOW_DOWNLOAD_BINARIES` (_optional_) if set to `true` will enable auto-downloading of new binaries
  (for security reasons, this is intended for full nodes rather than validators).
- `DAEMON_RESTART_AFTER_UPGRADE` (_optional_) if set to `true` it will restart the sub-process with the same
  command line arguments and flags (but new binary) after a successful upgrade. By default, `furyvisor` dies
  afterwards and allows the supervisor to restart it if needed. Note that this will not auto-restart the child
  if there was an error.

## Data Folder Layout

`$DAEMON_HOME/furyvisor` is expected to belong completely to `furyvisor` and
subprocesses that are controlled by it. The folder content is organised as follows:

```bash
.
├── current -> genesis or upgrades/<name>
├── genesis
│   └── bin
│       └── $DAEMON_NAME
└── upgrades
    └── <name>
        └── bin
            └── $DAEMON_NAME
```

Each version of the Furychain application is stored under either `genesis` or `upgrades/<name>`, which holds `bin/$DAEMON_NAME`
along with any other needed files such as auxiliary client programs or libraries. `current` is a symbolic link to the currently
active folder (so `current/bin/$DAEMON_NAME` is the currently active binary).

_Note: the `name` variable in `upgrades/<name>` holds the URI-encoded name of the upgrade as specified in the upgrade module plan._

Please note that `$DAEMON_HOME/furyvisor` just stores the _binaries_ and associated _program code_.
The `furyvisor` binary can be stored in any typical location (eg `/usr/local/bin`). The actual blockchain
program will store it's data under their default data directory (e.g. `$HOME/.furyd`) which is independent of
the `$DAEMON_HOME`. You can choose to set `$DAEMON_HOME` to the actual binary's home directory and then end up
with a configuation like the following, but this is left as a choice to the system admininstrator for best
directory layout:

```bash
.furyd
├── config
├── data
└── furyvisor
```

## Usage

The system administrator admin is responsible for:

- installing the `furyvisor` binary and configure the host's init system (e.g. `systemd`, `launchd`, etc) along with the environmental variables appropriately;
- installing the `genesis` folder manually;
- installing the `upgrades/<name>` folders manually.

`furyvisor` will set the `current` link to point to `genesis` at first start (when no `current` link exists) and handles
binaries switch overs at the correct points in time, so that the system administrator can prepare days in advance and relax at upgrade time.

Note that blockchain applications that wish to support upgrades may package up a genesis `furyvisor` tarball with this information,
just as they prepare the genesis binary tarball. In fact, they may offer a tarball will all upgrades up to current point for easy download
for those who wish to sync a fullnode from start.

The `DAEMON` specific code and operations (e.g. tendermint config, the application db, syncing blocks, etc) are performed as normal.
Application binaries' directives such as command-line flags and environment variables work normally.

## Example: furyd

The following instructions provide a demonstration of `furyvisor`'s integration with the `furyd` application
shipped along the Furychain's source code.

First compile `furyd`:

```bash
cd /workspace
make build
```

Set the required environment variables:

```bash
export DAEMON_NAME=furyd         # binary name
export DAEMON_HOME=$HOME/.furyd  # daemon's home directory
```

Create the `furyvisor`’s genesis folders and deploy the binary:

```bash
mkdir -p $DAEMON_HOME/furyvisor/genesis/bin
cp ./build/furyd $DAEMON_HOME/furyvisor/genesis/bin
```

Create a new key and setup the `furyd` node:

```bash
./scripts/setup_furyd.sh 12345678
```

For the sake of this demonstration, we would amend `voting_params.voting_period` in `.furyd/config/genesis.json` to a reduced time ~1 minutes (60s) and eventually launch `furyvisor`:

```bash
sed -i 's/voting_period" *: *".*"/voting_period": "60s"/g' .furyd/config/genesis.json
```

Now furyvisor is a replacement for furyd

```bash
furyvisor start
```

For the sake of this demonstration, we will hardcode a modification in `furyd` to simulate a code change.
In `furyd/app.go`, find the line containing the upgrade Keeper initialisation, it should look like
`app.upgradekeeper = upgradekeeper.NewKeeper(skipUpgradeHeights, ...)`.
After that line, add the following snippet:

```go
app.upgradekeeper.SetUpgradeHandler("ai-oracle", func(ctx sdk.Context, plan upgradetypes.Plan) {
    // Add modification logic
})
```

then rebuild it with `make build`

Submit a software upgrade proposal:

```bash
# check fury.env for allowing auto download and upgrade form a URL
# DAEMON_ALLOW_DOWNLOAD_BINARIES=true
# DAEMON_RESTART_AFTER_UPGRADE=true

# using s3 to store build file
aws s3 mb s3://fury
aws s3 cp build/furyd s3://fury --acl public-read
echo '{"binaries":{"linux/amd64":"https://fury.s3.amazonaws.com/furyd?versionId=new_furyd_version"}}' > build/manifest.json
aws s3 cp build/manifest.json s3://fury --acl public-read

# then submit proposal
furyd tx gov submit-proposal software-upgrade "v0.41.0" --title "upgrade Furychain network to v0.41.0, patches the Dragonberry advisory with custom CosmWasm - backward compatibility for v0.13.2" --description "Please visit https://github.com/furychain/fury to view the CHANGELOG for this upgrade" --from $USER --upgrade-height 9415363 --upgrade-info "https://fury.s3.us-east-2.amazonaws.com/v0.41.0/manifest.json" --deposit 10000000fury --chain-id Furychain-testnet -y

```

Submit a `Yes` vote for the upgrade proposal:

```bash
furyd tx gov vote 1 yes --from $USER --chain-id $CHAIN_ID -y
```

Query the proposal to ensure it was correctly broadcast and added to a block:

```bash
furyd query gov proposal 1
```

The upgrade will occur automatically at height 20.
