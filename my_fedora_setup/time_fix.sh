#! /bin/bash

timedatectl set-local-rtc 1 --adjust-system-clock && echo "Time fix was successfully applied"
