#!/bin/bash
if [ -f .env ]; then
  source .env
fi

r=`curl "https://api.telegram.org/bot$SQUAWK_TG_TOKEN/sendMessage?chat_id=$SQUAWK_TG_RECIPIENT&parse_mode=MarkdownV2" \
  --data-urlencode "text=$1"`

