# saxon 9.3

FROM alpine:latest as tmp

WORKDIR /work

RUN apk add --no-cache wget unzip

RUN wget https://master.dl.sourceforge.net/project/saxon/Saxon-HE/9.3/saxonhe9-3-0-11j.zip?viasf=1 -O saxon.zip

RUN unzip saxon.zip -d ./saxon

FROM adoptopenjdk/openjdk8:jre8u242-b08-alpine

ENV SAXON_HOME /usr/share/java/saxon

COPY --from=tmp /work/saxon/saxon9he.jar /usr/share/java/saxon/saxon.jar

COPY ./saxon-scripts /bin

RUN chmod +x /bin/*

WORKDIR /app
