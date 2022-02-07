create table tran_head_stg (
store int(10),
cash_machine varchar(15),
cashier VARCHAR(50),
business_date DATE,
total_amount DECIMAL(10,4),
item_count INT(5),
sales_person VARCHAR(50),
tran_type VARCHAR(20),
transaction_date DATETIME,
tran_seq_no INT(20)
);tran_item_stg