w32tm /query /status

w32tm /query /source

net stop w32time

w32tm /config /syncfromflags:manual /manualpeerlist:"IP-Address" /update /reliable:YES

net start w32time

w32tm /resync

PAUSE
