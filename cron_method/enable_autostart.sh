#!/bin/bash

APP_PATH="/var/www/html/wdaws/bb/svr/restapi"
APP_NODE="${APP_PATH}/a.node.js"

EXE_CMD="@reboot sleep 300 && node ${APP_NODE}"

echo ${EXE_CMD}

### 
(crontab -l 2>/dev/null || true; echo "${EXE_CMD}") | crontab -



(crontab -l 2>/dev/null || true; echo "*/5 * * * * /path/to/job -with args") | crontab -

