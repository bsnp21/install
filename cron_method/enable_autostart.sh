#!/bin/bash

APP_PATH="/var/www/html/wdaws/bb/svr/restapi"
APP_NODE="${APP_PATH}/a.node.js"

EXE_CMD="@reboot sleep 300 && node ${APP_NODE} > ~/a.nod.log"

echo ${EXE_CMD} 

### 

(crontab -l 2>/dev/null || true; echo "* * * * * echo test_start >>crontab_test_start.log") | crontab -



(crontab -l 2>/dev/null || true; echo "${EXE_CMD}") | crontab -



(crontab -l 2>/dev/null || true; echo "* * * * * echo test_end >>crontab_test_end.log") | crontab -



crontab -l 2>/dev/null