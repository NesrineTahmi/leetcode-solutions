SELECT 
    t.request_at AS 'Day',
    ROUND(
        SUM(CASE WHEN t.status LIKE 'cancelled%' THEN 1 ELSE 0 END)/ COUNT(*), 2
    ) AS 'Cancellation Rate'
FROM Trips t
JOIN Users u
ON u.users_id = t.client_id
JOIN Users s
ON s.users_id = t.driver_id 
WHERE 
    u.banned = 'No' 
    AND s.banned = 'No'
    AND t.request_at IN ('2013-10-01', '2013-10-02', '2013-10-03')
GROUP BY t.request_at
