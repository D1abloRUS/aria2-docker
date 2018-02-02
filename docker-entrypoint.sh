#!/bin/sh

if [ $# -eq 0 ]; then
  aria2c --dir=/home --bt-enable-lpd --bt-max-peers=0 --seed-ratio=0.0 --bt-seed-unverified --bt-exclude-tracker="*" --follow-torrent=mem "${URL}"
else
  exec "$@"
fi
