#!/bin/sh
echo export REDIRECT_SERVICE_ID=$(ls .REDIRECT_SERVICE_ID* | sed s@___@/@g | awk 'BEGIN {FS="PREDIRECT_SERVICE_APIKEY"}{print $1}' | awk 'BEGIN {FS=".REDIRECT_SERVICE_ID"}{print $2}') > .bashrc

echo export REDIRECT_SERVICE_APIKEY=$(ls .REDIRECT_SERVICE_ID* | sed s@___@/@g | awk 'BEGIN {FS="PREDIRECT_SERVICE_APIKEY"}{print $2}') | awk 'BEGIN {FS=".REDIRECT_SERVICE"}{print $1}') >> .bashrc

echo export REDIRECT_SERVICE=$(ls .REDIRECT_SERVICE_ID* | sed s@___@/@g | awk 'BEGIN {FS="PREDIRECT_SERVICE_APIKEY"}{print $1}' | awk 'BEGIN {FS=".REDIRECT_SERVICE"}{print $2}') > .bashrc

#rm .REDIRECT_SERVICE_ID*