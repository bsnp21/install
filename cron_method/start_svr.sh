#!/bin/bash

APP_PATH="/var/www/html/wdaws/bb/svr/restapi"
APP_NODE="${APP_PATH}/a.node.js"

cd ${APP_PATH}
node ${APP_NODE} > ~/a.node.log
