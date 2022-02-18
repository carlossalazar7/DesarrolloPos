export TSK_JAVAHOME=/etc/java-11-openjdk/
now="$(date +'%Y%m%d%H:%M')"
logfilepath="/home/ubuntu/logs/open_cashier/OPEN_CASHIER"$now".log"

sh /home/ubuntu/backups/spoon-5.0.1/data-integration/kitchen.sh  /file "/home/ubuntu/backups/spoon/open_cashier_stg/subida/open_cashier_sub.kjb" -param:fNameIn="/home/ubuntu/backups/spoon/open_cashier_stg/subida/" /level Basic | tee -a $logfilepath