CREATE TABLE `open_cashier_stg` (
  `store` int DEFAULT NULL,
  `cash_machine` varchar(15) DEFAULT NULL,
  `cashier` varchar(50) DEFAULT NULL,
  `business_date` date DEFAULT NULL,
  `open_datetime` datetime DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT 
CHARSET=utf8mb3;
