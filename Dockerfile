FROM alpine:latest

LABEL "name"="xmlstarlet"
LABEL "maintainer"="Florian Scheel <keneanung@googlemail.com>"
LABEL "version"="1.1.0"

LABEL "com.github.actions.name"="Run xmlstarlet"
LABEL "com.github.actions.description"="Allows the use of xmlstarlet on files"
LABEL "com.github.actions.icon"="scissors"
LABEL "com.github.actions.color"="orange"

RUN apk add xmlstarlet

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]
