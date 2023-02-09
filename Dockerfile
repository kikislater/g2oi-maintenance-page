# -------------------------------------------------------------------
# g2oi/maintenance-page image is built using this Dockerfile.
#
# Most of the times, we build this image with:
# Example:
#   docker build -t g2oi/maintenance-page:1.0 -t g2oi/maintenance-page:latest .
# -------------------------------------------------------------------
FROM nginx:mainline

# "Users SHOULD use reverse-DNS notation to prevent labels from
# conflicting with those used by other software."
# Source:
#   https://docs.docker.com/compose/compose-file/#labels-1
LABEL com.g2oi.version="1.0."
LABEL com.g2oi.description="Photogrammetry IRD"
LABEL com.g2oi.maintainer="Sylvain Poulain <sylvain.poulain@ird.fr>"

ENV NGINX_HOST="opendronemap.ird.fr"
ENV NGINX_PORT="80"

COPY ./index.html /usr/share/nginx/html/index.html
COPY ./manifest.json /usr/share/nginx/html/manifest.json
COPY ./img /usr/share/nginx/html/img
