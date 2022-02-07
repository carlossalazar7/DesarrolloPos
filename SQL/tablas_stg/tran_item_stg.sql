
DROP TABLE IF EXISTS `tran_item_stg`;
CREATE TABLE `tran_item_stg` (
  `store` int DEFAULT NULL,
  `cash_machine` varchar(15) DEFAULT NULL,
  `business_date` date DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `quantity` decimal(10,4) DEFAULT NULL,
  `unit_price` decimal(10,4) DEFAULT NULL,
  `line_amount` decimal(10,4) DEFAULT NULL,
  `tran_seq_no` int DEFAULT NULL,
  `line_seq_no` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

