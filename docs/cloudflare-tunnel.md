# Cloudflare Tunnel

```shell

docker run -d --restart unless-stopped --network=kind cloudflare/cloudflared:latest tunnel --no-autoupdate run --token <redacted>
```