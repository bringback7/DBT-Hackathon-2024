


SELECT

    COUNT(CASE WHEN ID IS NULL THEN 1 END) AS "ID_missing", 

    COUNT(CASE WHEN CUSTOMER_STATUS IS NULL THEN 1 END) AS "CUSTOMER_STATUS_missing", 

    COUNT(CASE WHEN CUSTOMER_TYPE IS NULL THEN 1 END) AS "CUSTOMER_TYPE_missing", 

    COUNT(CASE WHEN CUSTOMER_CREATED IS NULL THEN 1 END) AS "CUSTOMER_CREATED_missing", 

    COUNT(CASE WHEN FIRST_NAME_HASH IS NULL THEN 1 END) AS "FIRST_NAME_HASH_missing", 

    COUNT(CASE WHEN SEX IS NULL THEN 1 END) AS "SEX_missing", 

    COUNT(CASE WHEN CUSTOMER_EMAIL_HASH IS NULL THEN 1 END) AS "CUSTOMER_EMAIL_HASH_missing", 

    COUNT(CASE WHEN CUSTOMER_PHONE_HASH IS NULL THEN 1 END) AS "CUSTOMER_PHONE_HASH_missing", 

    COUNT(CASE WHEN LAST_ORDER_DATE IS NULL THEN 1 END) AS "LAST_ORDER_DATE_missing", 

    COUNT(CASE WHEN RECENCY_DAYS IS NULL THEN 1 END) AS "RECENCY_DAYS_missing", 

    COUNT(CASE WHEN TRANSACTION_COUNT IS NULL THEN 1 END) AS "TRANSACTION_COUNT_missing", 

    COUNT(CASE WHEN TOTAL_ORDERED_AMOUNT IS NULL THEN 1 END) AS "TOTAL_ORDERED_AMOUNT_missing", 

    COUNT(CASE WHEN RECENCY_SCORE IS NULL THEN 1 END) AS "RECENCY_SCORE_missing", 

    COUNT(CASE WHEN FREQUENCY_SCORE IS NULL THEN 1 END) AS "FREQUENCY_SCORE_missing", 

    COUNT(CASE WHEN MONETARY_SCORE IS NULL THEN 1 END) AS "MONETARY_SCORE_missing", 

    COUNT(CASE WHEN RFM_SCORE IS NULL THEN 1 END) AS "RFM_SCORE_missing"

FROM HACKATHON.DATA_SAMPLE.PIZZA_CUSTOMERS


