# Tutorial to reset the node

### 1. Remove all runtime directories using the following command in the directory where you have the fury.env file

```bash
sudo rm -rf .furyd/
```

### 2. Pull and recreate the latest version of the fury image:

```
docker-compose pull fury && docker-compose up -d --force-recreate
```