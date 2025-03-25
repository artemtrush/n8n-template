# Self-Hosted n8n

Quick setup guide for self-hosted n8n.

## Setup Steps

### Clone and enter repository:

```bash
git clone <repo-url>
cd <repo-name>
```

### Set up environment:

```bash
cp .env.defaults .env
```

Edit `.env` with your domain, email and passwords.

In `nginx/nginx.conf` change `set $domain_name` to your domain name.

### Get SSL certificate:

```bash
docker-compose up -d nginx

./scripts/init-certbot.sh
```

### Enable SSL:

In `nginx/nginx.conf` change `set $ssl_enabled "false";` to `set $ssl_enabled "true";`

### Start services:

```bash
docker compose up -d
```

