# netstat -Aan |grep 14248
f10007000864ebb0 tcp        0      0  *.14248            *.*                LISTEN
 
# rmsock f10007000864ebb0 tcpcb
The socket 0x864e808 is being held by proccess 143640 (java).
 
 
# ps -ef |grep 143640
root  143640  127270   0   May 15      -  3:06 /var/opt/tivoli/ep/_jvm/jre/bin/java