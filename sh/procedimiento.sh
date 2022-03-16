export TSK_JAVAHOME=/etc/java-11-openjdk/
now="$(date +'%Y%m%d%H%M')"
logfilepath="/home/ubuntu/logs/procedimiento/procedure"$now".log"


echo "---------------------------------------------"
echo "Procedimiento: cargando datos a tablas transaccionales y limpiando tablas stg"
sh /home/ubuntu/backups/spoon-5.0.1/data-integration/kitchen.sh  /file "/home/ubuntu/backups/spoon/truncate_tables_stg/truncate_tables_stg.kjb" /level Detailed | tee -a $logfilepath
echo "---------------------------------------------"


echo "---------------------------------------------"
echo "Procedimiento finalizado."
echo "---------------------------------------------"