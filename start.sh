#!/bin/bash
scoutd --key=$SCOUT_KEY --environment=production --roles=applications config -o
nohup /docker_events.rb &
/usr/bin/scoutd start
