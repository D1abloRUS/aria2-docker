FROM alpine

COPY . /usr/local/bin

RUN apk --no-cache add --update \
  aria2 \
  && rm -rf /root/..?* \
     /root/.[!.]* \
     /root/* \
     /tmp/*

VOLUME /home

ENTRYPOINT ["/bin/sh", "/usr/local/bin/docker-entrypoint.sh"]
