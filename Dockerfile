# vpnstan - Railway-ready image
# Official 3X-UI v2.9.0 base image + lightweight vpnstan web dashboard.
FROM ghcr.io/mhsanaei/3x-ui:v2.9.0

# The 3X-UI image is Alpine-based. Install Python for the dashboard.
RUN apk add --no-cache python3

COPY web /opt/vpnstan/web
COPY scripts/start.sh /start-vpnstan.sh

RUN chmod 755 /start-vpnstan.sh

ENV VPNSTAN_WEB=/opt/vpnstan/web
# 2096 is the preferred public dashboard port. Railway may inject PORT;
# the dashboard listens on both when they differ.
ENV VPNSTAN_PORT=2096
ENV PORT=2096

EXPOSE 2096
EXPOSE 2053

# Do not use Docker VOLUME here. Railway manages persistent volumes itself.
ENTRYPOINT ["/start-vpnstan.sh"]
