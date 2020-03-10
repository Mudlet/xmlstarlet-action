FROM gliderlabs/alpine:3.4

LABEL "name"="xmlstarlet"
LABEL "maintainer"="Florian Scheel <keneanung@googlemail.com>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="Run xmlstarlet"
LABEL "com.github.actions.description"="Allows the use of xmlstarlet on files"
LABEL "com.github.actions.icon"="scissors"
LABEL "com.github.actions.color"="orange"

RUN apk add --update-cache xmlstarlet

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]
