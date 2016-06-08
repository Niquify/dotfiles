#!/bin/bash

PING=$( ping -c1 8.8.8.8 | grep -n3 " " | cut -d" " -f7,8 | cut -d"=" -f2 | head -2 | tail -1 )

echo -e "$PING"
