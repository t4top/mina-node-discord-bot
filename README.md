# mina-node-discord-bot

A simple bot that collects the health status of a Mina validator node and sends it to Discord.

## Result

Below is a sample screenshot of the bot in action.

<img src="/screenshot.png" alt="Sample screenshot" width="640">

## Usage

### Step 1. Get the webhook URL of your Discord channel

Follow below steps to create a webhook URL.

- In Discord, switch to the server you want to use.
- Under Text Channels, select the **Edit Channel** (gear icon) button to the right of the channel name.
- Switch to the **Integrations** tab. Press the **Create Webhook** button.
- Select the webhook and press the **Copy Webhook URL** button. This will copy the required Webhook URL to the clipboard.
- You can optionally customize the avatar image and the name of the Discord bot.

### Step 2. Install the bot on your Mina node

Run below command on your Mina node. Enter the webhook URL from step 1 when prompted.

```bash
source <(curl -s https://raw.githubusercontent.com/t4top/mina-node-discord-bot/main/install.sh)
```

### Step 3. Check the result on Discord

There should be an update showing the health status of your node on the Discord channel. Further updates will be received every 15 minutes.

In case of no update, repeat steps 1 and 2, and make sure you enter the correct webhook URL. A valid webhook URL should start with `https://discord.com/api/webhooks/`.

## Special Thanks

This project was inspired by [NodeNurseBot](https://github.com/kadiralan/NodeNurseBot) which provides similar status update for Telegram. Special thanks to @kadiralan for the idea and his sample project.
