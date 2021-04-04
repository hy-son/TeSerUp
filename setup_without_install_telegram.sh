#!/bin/bash

# Create folder in /opt
mkdir /opt/TeSerUp
mkdir /opt/TeSerUp/img
chmod a+rwx /opt/TeSerUp/img
# Copy local files to opt folder
cp * /opt/TeSerUp/

cd /opt/TeSerUp

# Loging alert
chmod +x telegram-login-msg.sh
cp telegram-login-msg.sh /etc/profile.d/telegram-login-msg.sh


# Add daily report to cron tab 
echo "00 12    * * 6   root /opt/TeSerUp/telegram-disk-usage.sh >/dev/null 2>&1" >> /etc/crontab


