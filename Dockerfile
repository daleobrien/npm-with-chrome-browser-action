FROM node:lts-alpine

LABEL version="1.0.0"
LABEL repository="https://github.com/daleobrien/npm-with-chrome-browser-action"
LABEL homepage="https://github.com/daleobrien/npm-with-chrome-browser-action"
LABEL maintainer="Dale O'Brien <daleobrien@github.com>"

LABEL com.github.actions.name="GitHub Action for NPM"
LABEL com.github.actions.description="Run with npm with access to a Chrome"
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="gray-dark"


RUN apk update && apk upgrade && \
    echo @edge http://nl.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories && \
    echo @edge http://nl.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories && \
    apk add --no-cache \
      chromium@edge \
      nss@edge

COPY LICENSE README.md /
COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
