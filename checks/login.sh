#!/bin/sh
# Johndoe/password1 logs in and gets an X-Api-Key cookie.
set -e
H=http://web:5000
curl -fsS -D - -o /dev/null -d "username=johndoe&password=password1" "$H/login" | grep -qi "^set-cookie: X-Api-Key="
