export TSK_JAVAHOME=/etc/java-11-openjdk/
now="$(date +'%Y%m%d%H%M')"
logfilepath="/home/ubuntu/logs/close_cashier/CLOSE_CASHIER"$now".log"

echo "---------------------------------------------"
echo "ejecutando etl"
sh /home/ubuntu/backups/spoon-5.0.1/data-integration/kitchen.sh  /file "/home/ubuntu/backups/spoon/close_cashier_stg/subida/close_cashierUp.kjb" -param:fileName="/home/ubuntu/backups/spoon/close_cashier_stg/files/pendding" /level Basic | tee -a $logfilepath
echo "---------------------------------------------"


echo "---------------------------------------------"
echo "moviendo archivos...."
mv /home/ubuntu/backups/spoon/close_cashier_stg/files/pendding/*.dat /home/ubuntu/backups/spoon/close_cashier_stg/files/processed/
echo "---------------------------------------------"


echo "---------------------------------------------"
echo "proceso finalizado!"
echo "---------------------------------------------"