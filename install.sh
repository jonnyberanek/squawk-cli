#!/bin/bash
REPO_URL="https://raw.githubusercontent.com/jonnyberanek/squawk-cli/refs/heads/main"

if [ -e /usr/local/bin/squawk ]; then
  echo "'/usr/local/bin/squawk' already exists, please remove before continuing"
  exit 1
fi

sudo wget -O /usr/local/bin/squawk "$REPO_URL/send.sh"

if [ -e /usr/local/etc/squawk ]; then
  echo "Existing files found at '/usr/local/etc/squawk', squawk.conf configuration will not be generated"
else
  sudo mkdir /usr/local/etc/squawk
  sudo wget -O /usr/local/etc/squawk/squawk.conf "$REPO_URL/.env.template"
fi

