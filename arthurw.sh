#!/bin/bash
REDIS_URL=redis://redis-master.redis/65535
PUBSUB_CHANNEL=debug

arthurw -g -d "$REDIS_URL" \
  --pubsub-channel "$PUBSUB_CHANNEL"