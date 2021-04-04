# TeSerUp

## Project Description:
Send telegram update from a serveur to a Telegram chanel.
Idea taken from this [web site](https://dev.to/bogkonstantin/send-message-to-telegram-on-any-ssh-login-24c8) using the telegram bot sript for this [GitHub](https://github.com/NicolasBernaerts/debian-scripts/tree/master/telegram).

*telegram-login-msg.sh* will send a message on telegram when someone login. The message will contain the user, IP and date of connection.

*telegram-disk-usage.sh* will send a message with your disk usage (in %). The message will contain and pie chart of the disk, and a message wth the date and disk usage. This script will be automaticaly launched every Saturday at noon.

## Features:
- Send message at each login on a Telegram chanel or user.

![Login message](https://github.com/hy-son/TeSerUp/blob/main/images/login.png)

- Weekly send an update of your disk usage.

![Disk full](https://github.com/hy-son/TeSerUp/blob/main/images/Disk_full.png)

## Requirement:

- Python3 with matplotlib on root: 'python3 -m pip install matplotlib'
- Install common fronts (you can pass it) : `sudo apt-get install msttcorefonts`
- Cron 


## Setup:
- Install the bot scripts **and** the telegram script from [Nicolas Bernaerts](https://github.com/NicolasBernaerts/debian-scripts/tree/master/telegram): `sudo .setup.sh`	
	- Set your api-key and user/chanel id  in /etc/telegram-notify.conf:
		- `sudo nano /etc/telegram-notify.conf`
		- test it with `telegram-notify --text "test msg"`. This should send a message on your chanel or to the user.
- Install the bot scripts **only**: `sudo .setup_without_install_telegram.sh`
	- To be used if you already have the telegram script (and configured it) 
