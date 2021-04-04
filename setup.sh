#!/bin/bash

# Create folder in /opt
mkdir /opt/TeSerUp
mkdir /opt/TeSerUp/img
chmod a+rwx /opt/TeSerUp/img
# Copy local files to opt folder
cp -r * /opt/TeSerUp/

cd /opt/TeSerUp

# Install telegram script from Nicolas Bernaerts
wget https://raw.githubusercontent.com/NicolasBernaerts/debian-scripts/master/telegram/telegram-notify-install.sh
./telegram-notify-install.sh

# Loging alert
chmod +x telegram-login-msg.sh
cp telegram-login-msg.sh /etc/profile.d/telegram-login-msg.sh


# Add daily report to cron tab 
echo "00 12    * * 6   root /opt/TeSerUp/telegram-disk-usage.sh >/dev/null 2>&1" >> /etc/crontab
echo ""
echo "Please update etc/telegram-notify.conf"

