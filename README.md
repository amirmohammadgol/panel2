# vpnstan — 3X-UI v2.9.0 Railway panel

A lightweight Persian RTL dashboard around the official 3X-UI v2.9.0 container.

## Deploy

1. Upload the contents of this folder to the **root** of your GitHub repository.
2. Railway should detect the root `Dockerfile` automatically.
3. Create/keep a Railway Volume mounted at `/etc/x-ui`.
4. Deploy the service.
5. In **Settings → Networking**, generate a domain and set its **Target Port** to `2096`.
6. Recommended Railway variable: `PORT=2096`.

The dashboard listens on `0.0.0.0` and also listens on the Railway-injected `PORT` if it differs, which prevents a common 502 caused by a target-port mismatch.

## 3X-UI

The underlying management service is the official `ghcr.io/mhsanaei/3x-ui:v2.9.0` image. Its internal panel/API remains on `127.0.0.1:2053` and is not the public Railway web port.
