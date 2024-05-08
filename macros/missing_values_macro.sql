{% macro count_nulls_percentage(source_name, table_name) %}
{% set table_columns = adapter.get_columns_in_relation(source(source_name, table_name)) %}
{% set total_rows_count = "COUNT(*) OVER()" %}

SELECT
{% for column in table_columns %}
    --{{ total_rows_count }} AS {{ column.name}}_total_rows,
    --COUNT(CASE WHEN {{ column.name }} IS NULL THEN 1 END) AS "{{ column.name }}_missing",
    ROUND(100.0 * COUNT(CASE WHEN {{ column.name }} IS NULL THEN 1 END) / NULLIF(COUNT(*), 0), 2) AS "{{ column.name }}_missing_percentage"
    {%- if not loop.last %}, {% endif %}
{% endfor %}
FROM {{ source(source_name, table_name) }}

{% endmacro %}
