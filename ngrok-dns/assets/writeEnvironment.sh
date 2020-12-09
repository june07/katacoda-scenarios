#!/bin/sh
echo export REDIRECT_SERVICE_USERID=$(ls .REDIRECT_SERVICE_USERID* | sed s@___@/@g | awk 'BEGIN {FS="PREDIRECT_SERVICE_APIKEY"}{print $1}' | awk 'BEGIN {FS=".REDIRECT_SERVICE_USERID"}{print $2}') > .bashrc

echo export REDIRECT_SERVICE_APIKEY=$(ls .REDIRECT_SERVICE_USERID* | sed s@___@/@g | awk 'BEGIN {FS="PREDIRECT_SERVICE_APIKEY"}{print $2}') >> .bashrc

rm .REDIRECT_SERVICE_USERID*