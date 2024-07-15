SELECT
    *
FROM
    {{ source('DEMA', 'inventory') }} QUALIFY ROW_NUMBER() OVER(
        PARTITION BY PRODUCTID
        ORDER BY
            CREATED_AT DESC
    ) = 1