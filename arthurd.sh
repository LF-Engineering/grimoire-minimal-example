#!/bin/bash

REDIS_URL=redis://redis-master.redis/65534
PUBSUB_CHANNEL=debug

arthurd -g --no-daemon \
  -h 0.0.0.0 -p 9999 \
  --no-archive \
  -d "$REDIS_URL" \
  --pubsub-channel "$PUBSUB_CHANNEL" \
  --log-path /home/grimoire/debug/arthurd_logs \
  1>/home/grimoire/debug/arthurd_logs/stdout.log \
  2>/home/grimoire/debug/arthurd_logs/stderr.log
