#!/bin/bash
 #service monitoring
 /bin/netstat -tulpn | awk '{print $4}' | awk -F: '{print $4}' | grep ^80$ > /dev/null   2>/dev/null
 a=$(echo $?)
 if test $a -ne 0
 then
 echo "http service down" | mail -s "HTTP Service DOWN and restarted now" khadarmd7@gmail.com #should install mailutils and setup before proceeding
 /etc/init.d/httpd start > /dev/null 2>/dev/null
 else
 sleep 0
 fi
 