# TardisLink

## Goal:
Send telegram update from my serveur to a Telegram chanel.
Idea from https://dev.to/bogkonstantin/send-message-to-telegram-on-any-ssh-login-24c8 and https://github.com/NicolasBernaerts/debian-scripts/tree/master/telegram 
The second script will send the disk usae daily.

## Requirement:
- Python3 with matplotlib
- Install common fronts (you can pass it) : `sudo apt-get install msttcorefonts` 


## Setup:
- Install the bot scripts **and** the telegram script from [Nicolas Bernaerts](https://github.com/NicolasBernaerts/debian-scripts/tree/master/telegram): `sudo .setup.sh`	
	- Set your api-key and user/chanel id  in /etc/telegram-notify.conf:
		- sudo nano /etc/telegram-notify.conf`
		- test with `telegram-notify --text "test msg"`
- Install the bot scripts **only**: `sudo .setup_without_install_telegram.sh`
	- To be used if you already have the telegram script (and configured it) 

	 



