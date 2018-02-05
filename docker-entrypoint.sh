#!/bin/sh

if [ $# -eq 0 ]; then
  aria2c --dir=/home --bt-enable-lpd --listen-port=6925 --dht-listen-port=6892 --bt-max-peers=0 --seed-ratio=0.0 --bt-seed-unverified --follow-torrent=mem "${URL}"
else
  exec "$@"
fi
