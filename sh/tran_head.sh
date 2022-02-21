export TSK_JAVAHOME=/etc/java-11-openjdk/
now="$(date +'%Y%m%d%H%M')"
logfilepath="/home/ubuntu/logs/tran_head/TRAN_HEAD"$now".log"

echo "---------------------------------------------"
echo "ejecutando etl"
sh /home/ubuntu/backups/spoon-5.0.1/data-integration/kitchen.sh  /file "/home/ubuntu/backups/spoon/tran_head_stg/subida/tran_head_stg(subida).ktr" -param:fNameIn="/home/ubuntu/backups/spoon/open_cashier_stg/files/pendding" /level Basic | tee -a $logfilepath
echo "---------------------------------------------"

echo "---------------------------------------------"
echo "moviendo archivos...."
mv /home/ubuntu/backups/spoon/open_cashier_stg/files/pendding/*.dat /home/ubuntu/backups/spoon/open_cashier_stg/files/processed/
echo "---------------------------------------------"

echo "---------------------------------------------"
echo "proceso finalizado!"
echo "---------------------------------------------"