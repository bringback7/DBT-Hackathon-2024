{% macro count_nulls(source_name, table_name) %}
{% set table_columns = adapter.get_columns_in_relation(source(source_name, table_name)) %}

SELECT
{% for column in table_columns %}
    COUNT(CASE WHEN {{ column.name }} IS NULL THEN 1 END) AS "{{ column.name }}_missing"
    {%- if not loop.last %}, {% endif %}
{% endfor %}
FROM {{ source(source_name, table_name) }}


{% endmacro %}
