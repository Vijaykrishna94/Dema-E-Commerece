SELECT
    CHANNELGROUP,
    NAME,
    SUM(QUANTITY) AS SOLD_QUANITTY,
    SUM(TOTAL_AMOUNT) AS SOLD_AMOUNT
FROM
    {{ ref('dim_Order_Inventory_Combined') }}
GROUP BY
    1,
    2