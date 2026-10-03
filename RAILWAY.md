# vpnstan — Railway deployment

This package is designed so the vpnstan web dashboard is available immediately after the container starts.

## Railway networking

Preferred public port: **2096**.

Set the generated Railway domain's **Target Port** to `2096`.

If Railway has injected another `PORT`, the dashboard also listens on that port, so an older target-port value will not by itself prevent the page from opening.

## Railway Volume

Attach the Railway Volume to:

`/etc/x-ui`

Do not put a Docker `VOLUME` instruction in the Dockerfile. Railway manages the volume at runtime.

## Variables

Recommended:

`PORT=2096`

If you already have a Railway-generated `PORT`, setting it to `2096` keeps the public target and health checks aligned.

## Important

The root URL serves the vpnstan dashboard independently of 3X-UI startup. The dashboard then connects to 3X-UI locally on `127.0.0.1:2053` for login and client management.
