#! /bin/bash
export TSK_JAVAHOME=/etc/java-11-openjdk/
now="$(date +'%Y%m%d%H%M')"
logfilepath="/home/ubuntu/logs/truncate_close_cashier/procedureCloseCashier"$now".log"


echo "---------------------------------------------"
echo "Procedimiento: cargando datos a tabla transaccional y limpiando close cashier stg"
sh /home/ubuntu/backups/spoon-5.0.1/data-integration/kitchen.sh  /file "/home/ubuntu/backups/spoon/truncate_closeCashier/bulk_stg_close_cashier.kjb" /level Detailed | tee -a $logfilepath
echo "---------------------------------------------"


echo "---------------------------------------------"
echo "Procedimiento finalizado."
echo "---------------------------------------------"