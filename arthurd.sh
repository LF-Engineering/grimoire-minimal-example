#!/bin/bash

REDIS_URL=redis://redis-master.redis/15
PUBSUB_CHANNEL=csqconv

arthurd -g --no-daemon \
  -h 0.0.0.0 -p 9999 \
  --no-archive \
  -d "$REDIS_URL" \
  --pubsub-channel "$PUBSUB_CHANNEL" \
  --log-path /home/grimoire/debug/arthurd_logs
