#!/bin/bash
rm TeSerUp.log #del old log

/opt/TeSerUp/telegram-disk-usage.sh >TeSerUp.log 2>&1
/opt/TeSerUp/TeSerUp-update-monitoring.sh >TeSerUp.log 2>&1
