# Self-Hosted n8n

Quick setup guide for self-hosted n8n.

## Setup Steps

### Clone repository:

```bash
git clone <repo-url> n8n

cd n8n
```

### Set up environment:

```bash
cp .env.defaults .env
```

Edit `.env` with your server domain, email and passwords.

For free domain hosting you can use [FreeDNS](https://freedns.afraid.org/)

Point your domain to the IP address of your server.

### Get SSL certificate:

Comment https `server` section in `nginx/nginx.conf` to disable SSL for now.

Start nginx and init certbot challenge:
```bash
docker compose up -d nginx

./scripts/init-certbot.sh
```

Uncomment https `server` section in `nginx/nginx.conf` to enable SSL.

Restart nginx:
```bash
docker compose up -d nginx --force-recreate
```

### Start services:

```bash
docker compose up -d
```

