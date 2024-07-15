{% macro compare_value(model_1,model_2, column_name) %}
SELECT * FROM 
(SELECT
    SUM(O.{{ column_name }}) - SUM(IO.{{ column_name }})  AS DIFF
FROM
    {{ model_1 }} O
    LEFT JOIN {{ model_2 }} IO ON O.HARDID = IO.HARDID)
WHERE
DIFF <> 0
{% endmacro %}