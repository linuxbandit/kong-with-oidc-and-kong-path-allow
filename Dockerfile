FROM kong:2.0

USER root

RUN apk --update --no-cache add git unzip && \
    luarocks install kong-oidc && \
    apk del git unzip

USER kong
