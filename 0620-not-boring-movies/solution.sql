SELECT *
FROM Cinema AS c
WHERE c.id % 2 AND description <> "boring"
ORDER BY c.rating DESC
