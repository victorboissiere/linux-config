#!/bin/sh

while true; do
  # Check if failed ubuntu logged attempt
  new_failed=$(echo -n $(cat /var/log/auth.log | grep "failed" | tail -n 1))
  old_failed=$(cat failed_state)
  if test "$new_failed" != "$old_failed" ; then
    notify-send -t 5000 -u critical "Master, is it you ? :( Wrong password !"
    echo $new_failed > failed_state
  fi
  sleep 2
done
