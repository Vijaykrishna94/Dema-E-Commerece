SELECT
    *,md5(orderid||'-'|| productid ||'-'|| datetime) as hardid
FROM
    {{ source('DEMA', 'orders') }} QUALIFY ROW_NUMBER() OVER(
        PARTITION BY ORDERID,
        PRODUCTID,
        DATETIME
        ORDER BY
            CREATED_AT DESC
    ) = 1