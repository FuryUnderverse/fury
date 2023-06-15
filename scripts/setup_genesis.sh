#!/bin/sh
#set -o errexit -o nounset -o pipefail

echo -n "Enter passphrase:"
read -s PASSWORD
CHAIN_ID=${CHAIN_ID:-Furychain}
USER=${USER:-tupt}
MONIKER=${MONIKER:-node001}

rm -rf "$PWD"/.furyd

furyd init --chain-id $CHAIN_ID "$MONIKER"

(echo "$PASSWORD"; echo "$PASSWORD") | furyd keys add $USER 2>&1 | tee account.txt

# hardcode the validator account for this instance
(echo "$PASSWORD") | furyd add-genesis-account $USER "100000000000000fury"

(echo "$PASSWORD") | furyd add-genesis-account 'fury18hr8jggl3xnrutfujy2jwpeu0l76azprlvgrwt' "100000000000000fury"

sed -i "s/enabled-unsafe-cors *= *.*/enabled-unsafe-cors = true/g" .furyd/config/app.toml
sed -i "s/cors_allowed_origins *= *.*/cors_allowed_origins = \[\"*\"\]/g" .furyd/config/config.toml
sed -i "1,/\<laddr\>/{s/\<laddr\> *= *.*/laddr = \"tcp:\/\/0.0.0.0:26657\"/g}" .furyd/config/config.toml # replace exactly the string laddr with\< and \>

# submit a genesis validator tx
## Workraround for https://github.com/cosmos/cosmos-sdk/issues/8251
(echo "$PASSWORD"; echo "$PASSWORD") | furyd gentx $USER "$AMOUNT" --chain-id=$CHAIN_ID --amount="$AMOUNT" -y

furyd collect-gentxs

furyd validate-genesis

# cat $PWD/.furyd/config/genesis.json | jq .app_state.genutil.gen_txs[0] -c > "$MONIKER"_validators.txt

echo "The genesis initiation process has finished ..."

