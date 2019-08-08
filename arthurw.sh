#!/bin/bash
REDIS_URL=redis://redis-master.redis/15
PUBSUB_CHANNEL=csqconv

arthurw -g -d "$REDIS_URL" \
  --pubsub-channel "$PUBSUB_CHANNEL"
