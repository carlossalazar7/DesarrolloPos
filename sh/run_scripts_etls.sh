#! /bin/bash

export TSK_JAVAHOME=/etc/java-11-openjdk/

echo "********************************************************************************"
echo "Ejecucion de scripts etls"
echo "********************************************************************************"

echo "********************************************************************************"
echo "ejecutando open_cashier.sh"
sh /home/ubuntu/sh/open_cashier_subida.sh
echo "********************************************************************************"

echo "********************************************************************************"
echo "ejecutando item_subida.sh"
sh /home/ubuntu/sh/item_subida.sh
echo "********************************************************************************"

echo "********************************************************************************"
echo "ejecutando customer_subida.sh"
sh /home/ubuntu/sh/customer_subida.sh
echo "********************************************************************************"

echo "********************************************************************************"
echo "ejecutando tran_head_subida.sh"
sh /home/ubuntu/sh/tran_head_subida.sh
echo "********************************************************************************"

echo "********************************************************************************"
echo "ejecutando tran_tender_subida.sh"
sh /home/ubuntu/sh/tran_tender_subida.sh
echo "********************************************************************************"

echo "********************************************************************************"
echo "ejecutando tran_item_subida.sh"
sh /home/ubuntu/sh/tran_item_subida.sh
echo "********************************************************************************"

echo "********************************************************************************"
echo "ejecutando close_cashier_subida.sh"
sh /home/ubuntu/sh/close_cashier_subida.sh
echo "********************************************************************************"

echo "---------------------------------------------"
echo "Cargando datos a tablas transaccionales y limpiando tablas stg"
sh /home/ubuntu/backups/spoon-5.0.1/data-integration/kitchen.sh  /file "/home/ubuntu/backups/spoon/truncate_tables_stg/truncate_tables_stg.kjb" /level Detailed
echo "---------------------------------------------"


echo "********************************************************************************"
echo "Ejecucion de scripts etls, terminado"
echo "********************************************************************************"