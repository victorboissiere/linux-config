#/bin/sh

Color_Off='\033[0m'
Red='\033[0;31m'
Green='\033[0;32m'

IP='tivbroc.com'
ping -c 1 8.8.8.8 >/dev/null 2>&1
if [ "$?" = 0 ]; then
    ping -c 1 $IP >/dev/null 2>&1
    if [ "$?" = 0 ]; then
        echo "OK"
    else
        echo "KO. Server not responding"
    fi
fi
