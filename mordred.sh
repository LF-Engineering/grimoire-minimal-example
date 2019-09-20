#!/bin/bash

mkdir -p /home/grimoire/debug/mordred_logs

sirmordred -c /home/grimoire/debug/mordred.ini 1>/home/grimoire/debug/mordred_logs/stdout.log 2>/home/grimoire/debug/mordred_logs/stderr.log
