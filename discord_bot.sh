#!/bin/bash

# Discord Webhook URL. It'll be set by the install.sh script
WEBHOOK_URL="ENTER_DISCORD_WEBHOOK_URL_HERE"

CURL=/usr/bin/curl
MINA=/usr/local/bin/mina

# get useful status info from mina client
status=$($MINA client status | grep -E "Block height:|Local uptime:|Peers:|Sync status:|Block producers running:|Next block will be produced in:|Consensus time now:")

# prepare Discord notification payload
payload=$(cat <<-END
{
  "embeds": [
    {
      "color": "14177041",
      "fields": [
        {
          "name": "Hostname",
          "value": "$(hostname)"
        },
        {
          "name": "Mina Client Status",
          "value": "$(echo ${status//$'\n'/'\n'})"
        }
      ]
    }
  ]
}
END
)

# send the notification to Discord channel
$CURL -sL -X POST $WEBHOOK_URL -H 'Content-Type: application/json' -d "$payload"
