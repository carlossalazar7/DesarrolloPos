DELIMITER //

CREATE PROCEDURE `prc_bulk_stg_data`() 
BEGIN -- STORE_DAY
INSERT INTO ConsitiPOS.STORE_DAY (DAY, STORE, BUSINESS_DATE)
SELECT DISTINCT DATE_FORMAT(BUSINESS_DATE, '%d'),
    STORE,
    BUSINESS_DATE
FROM ConsitiPOS.open_cashier_stg a
where NOT EXISTS (
        SELECT 1
        FROM ConsitiPOS.STORE_DAY b
        WHERE b.BUSINESS_DATE = a.business_date
            AND b.STORE = a.store
    );
TRUNCATE TABLE ConsitiPOS.open_cashier_stg;
-- TRAN_HEAD
-- APLICAR UPDATE
INSERT INTO ConsitiPOS.TRAN_HEAD (
        STORE_DAY_SEQ_NO,
        -- key
        REV_NO,
        -- key
        REGISTER,
        CASHIER,
        SALESPERSON,
        TRAN_TYPE,
        STATUS,
        VALUE,
        STORE,
        -- key
        DAY,
        -- key
        TRAN_SEQ_NO,
        -- key
        TRAN_DATETIME -- key
    )
SELECT b.STORE_DAY_SEQ_NO,
    0,
    cash_machine,
    cashier,
    sales_person,
    tran_type,
    head_status,
    total_amount,
    a.STORE,
    DATE_FORMAT(a.BUSINESS_DATE, '%d'),
    tran_seq_no,
    transaction_date
FROM ConsitiPOS.tran_head_stg a,
    ConsitiPOS.STORE_DAY b
WHERE a.store = b.STORE
    AND b.BUSINESS_DATE = a.business_date ON DUPLICATE KEY
UPDATE REGISTER = a.cash_machine,
    CASHIER = a.cashier,
    SALESPERSON = a.sales_person,
    TRAN_TYPE = a.tran_type,
    STATUS = a.head_status,
    VALUE = a.total_amount;

-- vaciar tabla
TRUNCATE TABLE ConsitiPOS.tran_head_stg;


-- CUSTOMER 
INSERT INTO ConsitiPOS.CUSTOMER (
        CUST_ID,
        STORE,
        TRAN_SEQ_NO,
        NAME,
        E_MAIL,
        WORK_PHONE,
        ADDR1,
        CUST_ID_TYPE,
        DAY
    )
SELECT customer_document,
    store,
    tran_seq_no,
    customer_name,
    customer_email,
    customer_phone,
    customer_address,
    customer_type,
    DATE_FORMAT(business_date, '%d')
FROM ConsitiPOS.customer_stg a ON DUPLICATE KEY
UPDATE CUST_ID = a.customer_document,
    NAME = a.customer_name,
    E_MAIL = a.customer_email,
    WORK_PHONE = a.customer_phone,
    ADDR1 = a.customer_address,
    CUST_ID_TYPE = a.customer_type;
TRUNCATE TABLE ConsitiPOS.customer_stg;
-- tran_tender
-- APLICAR UPDATE
INSERT INTO ConsitiPOS.TRAN_TENDER (
        STORE,
        DAY,
        TENDER_SEQ_NO,
        TRAN_SEQ_NO,
        TENDER_AMT,
        TENDER_TYPE_ID
    )
SELECT store,
    DATE_FORMAT(business_date, '%d'),
    tender_seq_no,
    tran_seq_no,
    tender_amount,
    tender_name
FROM ConsitiPOS.tran_tender_stg a ON DUPLICATE KEY
UPDATE TENDER_AMT = a.tender_amount,
    TENDER_TYPE_ID = a.tender_name;
TRUNCATE TABLE ConsitiPOS.tran_tender_stg;



-- TRAN_ITEM
-- APLICAR UPDATE
INSERT INTO ConsitiPOS.TRAN_ITEM (
        STORE,
        DAY,
        TRAN_SEQ_NO,
        ITEM_SEQ_NO,
        ITEM,
        QTY,
        UNIT_RETAIL,
        ITEM_STATUS
    )
SELECT a.store,
    DATE_FORMAT(a.business_date, '%d'),
    a.tran_seq_no,
    a.line_seq_no,
    a.item,
    a.quantity,
    a.unit_price,
    a.item_status
FROM ConsitiPOS.tran_item_stg a ON DUPLICATE KEY
UPDATE QTY = a.quantity,
    UNIT_RETAIL = a.unit_price;
TRUNCATE TABLE ConsitiPOS.tran_item_stg;

-- close_cashier
WITH info AS (
    SELECT DISTINCT DATE_FORMAT(BUSINESS_DATE, '%d') as dia,
        STORE as tienda,
        BUSINESS_DATE
    FROM ConsitiPOS.close_cashier_stg a
    where NOT EXISTS (
            SELECT 1
            FROM ConsitiPOS.STORE_DAY b
            WHERE b.BUSINESS_DATE = a.business_date
                AND b.STORE = a.store
        )
)
UPDATE ConsitiPOS.STORE_DAY
SET STORE_STATUS = 'CLOSE'
WHERE STORE = (
        select STORE
        FROM info
    )
    AND BUSINESS_DATE = (
        select BUSINESS_DATE
        FROM info
    )
    AND `DAY` = (
        select dia
        FROM info
    );
TRUNCATE TABLE ConsitiPOS.close_cashier_stg;
-- ITEM MASTER
INSERT INTO ConsitiPOS.ITEM_MASTER (
        ITEM,
        ITEM_DESC,
        CLASS,
        SUBCLASS,
        CREATE_DATETIME,
        LAST_UPDATE_DATETIME
    )
SELECT a.ITEM,  
    a.ITEM_DESC,
    a.CLASS,
    a.SUBCLASS,
    sysdate(),
    a.LAST_UPDATE_DATETIME
FROM ConsitiPOS.ITEM_STG a ON DUPLICATE KEY
UPDATE ITEM_DESC = a.ITEM_DESC,
    CLASS = a.CLASS,
    SUBCLASS = a.SUBCLASS,
    LAST_UPDATE_DATETIME = sysdate();
TRUNCATE TABLE ConsitiPOS.ITEM_STG;
COMMIT;
END //
 DELIMITER ; 