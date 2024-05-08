{% macro get_column_names(table_name) %}
  {{ config(
    materialized='table',
    alias='column_names_' ~ table_name
  ) }}

  WITH columns_cte AS (
    SELECT column_name
    FROM information_schema.columns
    WHERE table_name = LIKE '%CZK%' 
  )

  SELECT *
  FROM columns_cte;
{% endmacro %}