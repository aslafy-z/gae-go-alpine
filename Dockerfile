FROM golang:1.7-alpine

ENV APPENGINE_VERSION=1.9.48
ENV SDK_URL=https://storage.googleapis.com/appengine-sdks/featured/go_appengine_sdk_linux_amd64-${APPENGINE_VERSION}.zip \
    PATH=/google_appengine:${PATH} \
    GOROOT=/usr/local/go

RUN set -x \
  && apk add --no-cache gcc musl-dev git python \
  && apk add --no-cache --virtual .dldeps curl unzip \
  && curl -fo /tmp/gae.zip ${SDK_URL} \
  && unzip -q /tmp/gae.zip -d /tmp/ \
  && mv /tmp/go_appengine /google_appengine \
  && rm -f /tmp/gae.zip \
  && apk del .dldeps
