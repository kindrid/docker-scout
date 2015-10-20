#!/bin/bash
nohup /docker_events.rb &
/usr/bin/scoutd --key=$SCOUT_KEY --environment=$SCOUT_ENVIRONMENT --logfile='-' start
