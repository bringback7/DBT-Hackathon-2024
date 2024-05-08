{% macro replace_currency_columns(table_name, currency_list) %}

  WITH currency_columns AS (
    SELECT column_name
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE table_name = '{{ table_name }}'
      AND ({% for currency in currency_list %}
          column_name LIKE '%{{ currency }}%'
        {% if not loop.last %} OR {% endif %}
      {% endfor %})
  )

  SELECT
    {% for currency in currency_list %}
      {% if loop.index > 1 %},{% endif %}
      COALESCE(
        {% for row in currency_columns %}
          CASE WHEN '{{ row.column_name }}' LIKE '%{{ currency }}%'
          THEN regexp_replace({{ row.column_name }}, '{{ currency }}', '')
          {% if not loop.last %}END, {% else %} END{% endif %}
        {% endfor %}
      , '{{ currency }}') AS {{ currency }}
    {% endfor %},
    *
  FROM {{ table_name }};

{% endmacro %}