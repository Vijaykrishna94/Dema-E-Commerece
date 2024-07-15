SELECT
    *,
    ROW_NUMBER() OVER(
        PARTITION BY CHANNEL
        ORDER BY
            TOTAL_AMOUNT DESC
    ) AS RANKING
FROM
    (
        SELECT
            CHANNEL,
            CAMPAIGN,
            SUM(TOTAL_AMOUNT) AS TOTAL_AMOUNT
        FROM
            {{ ref('dim_Order_Inventory_Combined') }}
        WHERE
            CAMPAIGN <> ''
        GROUP BY
            1,
            2
    )