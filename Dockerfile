# -------------------------------------------------------------------
# nsustain/maintenance-page image is built using this Dockerfile.
# Docker Hub:
#   https://hub.docker.com/repository/docker/nsustain/maintenance-page
#
# Most of the times, we build this image with:
# Example:
#   docker build -t nsustain/maintenance-page:1.0 -t nsustain/maintenance-page:latest .
#   sudo docker push nsustain/maintenance-page --all-tags
# -------------------------------------------------------------------
FROM nginx:stable-alpine

# "Users SHOULD use reverse-DNS notation to prevent labels from
# conflicting with those used by other software."
# Source:
#   https://docs.docker.com/compose/compose-file/#labels-1
LABEL com.nsustain.version="1.0."
LABEL com.nsustain.description="Nsustain.com"
LABEL com.nsustain.maintainer="Soobin Rho <soobinrho@nsustain.com>"

ENV NGINX_HOST="nsustain.com"
ENV NGINX_PORT="80"

ADD ./index.html /usr/share/nginx/html/index.html
ADD ./manifest.json /usr/share/nginx/html/manifest.json
ADD ./img /usr/share/nginx/html/img
