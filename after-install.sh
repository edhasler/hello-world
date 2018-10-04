#! /usr/bin/sh
if [ "$DEPLOYMENT_GROUP_NAME" == "Dev" ]
then
    sed -i -e 's/TEST/DEV/g' /var/www/html/index.html
fi
