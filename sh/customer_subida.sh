export TSK_JAVAHOME=/etc/java-11-openjdk/
now="$(date +'%Y%m%d%H%M')"
logfilepath="/home/ubuntu/logs/customer/CUSTOMER"$now".log"

echo "---------------------------------------------"
echo "ejecutando etl"
sh /home/ubuntu/backups/spoon-5.0.1/data-integration/kitchen.sh  /file "/home/ubuntu/backups/spoon/customer_stg/subida/customer_stg_job.kjb" -param:file="/home/ubuntu/backups/spoon/customer_stg/files/pendding/" /level Detailed | tee -a $logfilepath
echo "---------------------------------------------"


echo "---------------------------------------------"
echo "moviendo archivos...."
mv /home/ubuntu/backups/spoon/customer_stg/files/pendding/*.dat /home/ubuntu/backups/spoon/customer_stg/files/processed/
echo "---------------------------------------------"


echo "---------------------------------------------"
echo "proceso finalizado!"
echo "---------------------------------------------"