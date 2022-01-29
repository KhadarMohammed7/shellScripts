#!/bin/bash
svc=apache2
svcstat=not
service $svc status | grep -i "running\|'not running'" | awk '{print $3}' | while read output;
do
echo $output
if [ "$output" == "$svcstat" ]; then
    service $svc start
    echo "$svc service is UP now.!" | mail -s "$svc service was DOWN and restarted now On $(hostname)" khadarmd7@gmail.com #should install mailutils and setup before proceeding
    else
    echo "$serv service is running"
    fi
done