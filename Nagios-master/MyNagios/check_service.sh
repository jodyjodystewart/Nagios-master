#
# Nagios Plugin Bash Script - check_service.sh
# This script checks if program is running
# Check for missing parameters
if [ -z $1 ]
then
    echo "Missing parameters! Syntax: ./check_service.sh service_name"
    exit 3
fi
#if ps ax | grep -v grep | grep $1 > /dev/null

ps ax | grep $1 > /home/ntisjs33/test1
echo `cat /home/ntisjs33/test1 | wc -l` > test2
if [ `cat test2` -gt 3 ];
then
    echo "OK, $1 service is running"
    exit 0
else
    echo "CRITICAL, $1 is not running"
    exit 2
fi
