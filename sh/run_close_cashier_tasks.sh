#! /bin/bash

echo "--------------------------------------------------------------------------------"
echo "------------------------------close cashier script------------------------------"
echo "--------------------------------------------------------------------------------"

echo "********************************************************************************"
echo "ejecutando close_cashier_subida.sh"
sh /home/ubuntu/sh/close_cashier_subida.sh
echo "********************************************************************************"

echo "********************************************************************************"
echo "Truncate close_cashier_stg table"
sh /home/ubuntu/sh/procedureCloseCashier.sh
echo "********************************************************************************"

echo "--------------------------------------------------------------------------------"
echo "-----------------------------------Finalizado-----------------------------------"
echo "--------------------------------------------------------------------------------"