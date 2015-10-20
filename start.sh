#!/bin/bash
scoutd --key=$SCOUT_KEY --environment=$SCOUT_ENVIRONMENT --logfile='-' config -o
nohup /docker_events.rb &
/usr/bin/scoutd start
