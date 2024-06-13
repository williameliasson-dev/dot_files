#!/bin/bash
updates=$(checkupdates)
update_count=$(echo "$updates" | wc -l)
echo "$update_count"
