#!/bin/sh
set -u

# Start 3X-UI using its official container entrypoint in the background.
# The dashboard is independent, so it can come up even while 3X-UI is still starting.
if [ -x /app/DockerEntrypoint.sh ]; then
  /app/DockerEntrypoint.sh >/tmp/x-ui.log 2>&1 &
else
  x-ui >/tmp/x-ui.log 2>&1 &
fi

# Start the vpnstan web dashboard. It serves on 2096 and, when Railway
# injects a different PORT, also listens on that PORT so the Railway
# target-port setting cannot cause a 502 by itself.
exec python3 /opt/vpnstan/web/server.py
