#!/bin/bash

# Create folder in /opt
mkdir /opt/TardisLink
mkdir /opt/TardisLink/img
chmod a+rwx /opt/TardisLink/img
# Copy local files to opt folder
cp * /opt/TardisLink/

cd /opt/TardisLink

# Loging alert
chmod +x telegram-login-msg.sh
cp telegram-login-msg.sh /etc/profile.d/telegram-login-msg.sh


# Add daily report to cron tab 
echo "00 12    * * 6   root /opt/TardisLink/telegram-disk-usage.sh >/dev/null 2>&1" >> /etc/crontab


