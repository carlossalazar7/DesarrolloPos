CREATE TABLE `tran_tender_stg` (
	`store` INT(10) NULL DEFAULT NULL,
	`cash_machine` INT(15) NULL DEFAULT NULL,
	`business_date` DATE NULL DEFAULT NULL,
	`tender_name` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`tender_amount` DOUBLE(10,4) NULL DEFAULT NULL,
	`tran_seq_no` INT(20) NULL DEFAULT NULL,
	`tender_seq_no` INT(30) NULL DEFAULT NULL,
	`file_name` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8_general_ci'
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
