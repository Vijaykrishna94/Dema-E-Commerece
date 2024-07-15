SELECT
    NAME,
    DATETIME::DATE AS Purchase_date,
    SUM(QUANTITY) AS SOLD_QUANITTY
FROM
    {{ ref('dim_Order_Inventory_Combined') }}
GROUP BY
    1,
    2