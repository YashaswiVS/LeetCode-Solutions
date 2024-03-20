SELECT
    s.user_id,
    ROUND(IFNULL(SUM(IF(c.action = 'confirmed', 1, 0)) / COUNT(c.user_id), 0),2) AS confirmation_rate
FROM
    Signups s
LEFT JOIN
    Confirmations c
ON
    s.user_id = c.user_id
GROUP BY
    s.user_id
ORDER BY
    s.user_id;