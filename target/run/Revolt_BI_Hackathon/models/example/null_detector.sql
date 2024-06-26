
  create or replace   view HACKATHON.TEAM_06.null_detector
  
   as (
    



SELECT

    --COUNT(*) OVER() AS ID_total_rows,
    --COUNT(CASE WHEN ID IS NULL THEN 1 END) AS "ID_missing",
    ROUND(100.0 * COUNT(CASE WHEN ID IS NULL THEN 1 END) / NULLIF(COUNT(*), 0), 2) AS "ID_missing_percentage", 

    --COUNT(*) OVER() AS CUSTOMER_STATUS_total_rows,
    --COUNT(CASE WHEN CUSTOMER_STATUS IS NULL THEN 1 END) AS "CUSTOMER_STATUS_missing",
    ROUND(100.0 * COUNT(CASE WHEN CUSTOMER_STATUS IS NULL THEN 1 END) / NULLIF(COUNT(*), 0), 2) AS "CUSTOMER_STATUS_missing_percentage", 

    --COUNT(*) OVER() AS CUSTOMER_TYPE_total_rows,
    --COUNT(CASE WHEN CUSTOMER_TYPE IS NULL THEN 1 END) AS "CUSTOMER_TYPE_missing",
    ROUND(100.0 * COUNT(CASE WHEN CUSTOMER_TYPE IS NULL THEN 1 END) / NULLIF(COUNT(*), 0), 2) AS "CUSTOMER_TYPE_missing_percentage", 

    --COUNT(*) OVER() AS CUSTOMER_CREATED_total_rows,
    --COUNT(CASE WHEN CUSTOMER_CREATED IS NULL THEN 1 END) AS "CUSTOMER_CREATED_missing",
    ROUND(100.0 * COUNT(CASE WHEN CUSTOMER_CREATED IS NULL THEN 1 END) / NULLIF(COUNT(*), 0), 2) AS "CUSTOMER_CREATED_missing_percentage", 

    --COUNT(*) OVER() AS FIRST_NAME_HASH_total_rows,
    --COUNT(CASE WHEN FIRST_NAME_HASH IS NULL THEN 1 END) AS "FIRST_NAME_HASH_missing",
    ROUND(100.0 * COUNT(CASE WHEN FIRST_NAME_HASH IS NULL THEN 1 END) / NULLIF(COUNT(*), 0), 2) AS "FIRST_NAME_HASH_missing_percentage", 

    --COUNT(*) OVER() AS SEX_total_rows,
    --COUNT(CASE WHEN SEX IS NULL THEN 1 END) AS "SEX_missing",
    ROUND(100.0 * COUNT(CASE WHEN SEX IS NULL THEN 1 END) / NULLIF(COUNT(*), 0), 2) AS "SEX_missing_percentage", 

    --COUNT(*) OVER() AS CUSTOMER_EMAIL_HASH_total_rows,
    --COUNT(CASE WHEN CUSTOMER_EMAIL_HASH IS NULL THEN 1 END) AS "CUSTOMER_EMAIL_HASH_missing",
    ROUND(100.0 * COUNT(CASE WHEN CUSTOMER_EMAIL_HASH IS NULL THEN 1 END) / NULLIF(COUNT(*), 0), 2) AS "CUSTOMER_EMAIL_HASH_missing_percentage", 

    --COUNT(*) OVER() AS CUSTOMER_PHONE_HASH_total_rows,
    --COUNT(CASE WHEN CUSTOMER_PHONE_HASH IS NULL THEN 1 END) AS "CUSTOMER_PHONE_HASH_missing",
    ROUND(100.0 * COUNT(CASE WHEN CUSTOMER_PHONE_HASH IS NULL THEN 1 END) / NULLIF(COUNT(*), 0), 2) AS "CUSTOMER_PHONE_HASH_missing_percentage", 

    --COUNT(*) OVER() AS LAST_ORDER_DATE_total_rows,
    --COUNT(CASE WHEN LAST_ORDER_DATE IS NULL THEN 1 END) AS "LAST_ORDER_DATE_missing",
    ROUND(100.0 * COUNT(CASE WHEN LAST_ORDER_DATE IS NULL THEN 1 END) / NULLIF(COUNT(*), 0), 2) AS "LAST_ORDER_DATE_missing_percentage", 

    --COUNT(*) OVER() AS RECENCY_DAYS_total_rows,
    --COUNT(CASE WHEN RECENCY_DAYS IS NULL THEN 1 END) AS "RECENCY_DAYS_missing",
    ROUND(100.0 * COUNT(CASE WHEN RECENCY_DAYS IS NULL THEN 1 END) / NULLIF(COUNT(*), 0), 2) AS "RECENCY_DAYS_missing_percentage", 

    --COUNT(*) OVER() AS TRANSACTION_COUNT_total_rows,
    --COUNT(CASE WHEN TRANSACTION_COUNT IS NULL THEN 1 END) AS "TRANSACTION_COUNT_missing",
    ROUND(100.0 * COUNT(CASE WHEN TRANSACTION_COUNT IS NULL THEN 1 END) / NULLIF(COUNT(*), 0), 2) AS "TRANSACTION_COUNT_missing_percentage", 

    --COUNT(*) OVER() AS TOTAL_ORDERED_AMOUNT_total_rows,
    --COUNT(CASE WHEN TOTAL_ORDERED_AMOUNT IS NULL THEN 1 END) AS "TOTAL_ORDERED_AMOUNT_missing",
    ROUND(100.0 * COUNT(CASE WHEN TOTAL_ORDERED_AMOUNT IS NULL THEN 1 END) / NULLIF(COUNT(*), 0), 2) AS "TOTAL_ORDERED_AMOUNT_missing_percentage", 

    --COUNT(*) OVER() AS RECENCY_SCORE_total_rows,
    --COUNT(CASE WHEN RECENCY_SCORE IS NULL THEN 1 END) AS "RECENCY_SCORE_missing",
    ROUND(100.0 * COUNT(CASE WHEN RECENCY_SCORE IS NULL THEN 1 END) / NULLIF(COUNT(*), 0), 2) AS "RECENCY_SCORE_missing_percentage", 

    --COUNT(*) OVER() AS FREQUENCY_SCORE_total_rows,
    --COUNT(CASE WHEN FREQUENCY_SCORE IS NULL THEN 1 END) AS "FREQUENCY_SCORE_missing",
    ROUND(100.0 * COUNT(CASE WHEN FREQUENCY_SCORE IS NULL THEN 1 END) / NULLIF(COUNT(*), 0), 2) AS "FREQUENCY_SCORE_missing_percentage", 

    --COUNT(*) OVER() AS MONETARY_SCORE_total_rows,
    --COUNT(CASE WHEN MONETARY_SCORE IS NULL THEN 1 END) AS "MONETARY_SCORE_missing",
    ROUND(100.0 * COUNT(CASE WHEN MONETARY_SCORE IS NULL THEN 1 END) / NULLIF(COUNT(*), 0), 2) AS "MONETARY_SCORE_missing_percentage", 

    --COUNT(*) OVER() AS RFM_SCORE_total_rows,
    --COUNT(CASE WHEN RFM_SCORE IS NULL THEN 1 END) AS "RFM_SCORE_missing",
    ROUND(100.0 * COUNT(CASE WHEN RFM_SCORE IS NULL THEN 1 END) / NULLIF(COUNT(*), 0), 2) AS "RFM_SCORE_missing_percentage"

FROM HACKATHON.DATA_SAMPLE.PIZZA_CUSTOMERS


  );

