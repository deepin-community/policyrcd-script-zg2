#!/bin/bash

CONFFILE="/etc/zg-policy-rc.d.conf"

if [ -z "$POLICYRCD" ]; then
  if [ -f "$CONFFILE" ]; then
    . $CONFFILE
  fi
fi

if [ -z "$POLICYRCD" ]; then
  for file in /usr/local/sbin/policy-rc.d /etc/policy-rc.d; do
    if [ -x "$file" ]; then
      POLICYRCD="$file"
      break
    fi
  done
fi

if [ -n "$POLICYRCD" ]; then
  $POLICYRCD "$@"
  exit $?
else
  exit 0
fi
