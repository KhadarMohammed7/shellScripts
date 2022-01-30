# shellScripts

1. serviceMonitor2.sh 
This script monitors the application in ubuntu server using "service command", it is setup in such a way that the script runs once in every 5 minutes using the cron entry specified in the script. 
It checks for the service "apache2" whether it is running or not. So, if the service is not running it will start the "apache2" service and notifies the email DL provided in the script (using mailutils package and mailx commands)

2. duplicateRemoval.sh
This script can be used globally to delete duplicate files from the specied directory recursively. We are making use of "fdupes" command to filter the duplicates. We have to run the script specifying a variable, i.e a directory name where we should delete the duplicate files. (e.g, ./duplicateRemoval.sh /home/user/)

3. Password2.sh 
This script is used to validate the strength of the password which we are going to setup as specified by firewall team. This script reads the password supplied on the screen and validates that it contains at least 8 characters, lower case and upper case alphabets, a numeric value and a special character. 
