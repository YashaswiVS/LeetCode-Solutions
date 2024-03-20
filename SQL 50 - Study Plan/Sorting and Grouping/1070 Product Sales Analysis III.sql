SELECT
    s.product_id,
    first_sale_year AS first_year,
    s.quantity,
    s.price
FROM
    (SELECT
        product_id,
        MIN(year) AS first_sale_year
    FROM
        Sales
    GROUP BY
        product_id) AS first_sale
JOIN
    Sales s ON first_sale.product_id = s.product_id AND first_sale.first_sale_year = s.year;