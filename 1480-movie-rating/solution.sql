(
    SELECT u.name AS results
    FROM Users u 
    INNER JOIN MovieRating r ON u.user_id = r.user_id
    GROUP BY u.user_id, u.name
    ORDER BY COUNT(r.movie_id) DESC, u.name ASC
    LIMIT 1
)

UNION ALL

(
    SELECT m.title AS results
    FROM Movies m
    INNER JOIN MovieRating r ON m.movie_id = r.movie_id
    WHERE YEAR(r.created_at) = 2020
      AND MONTH(r.created_at) = 2
    GROUP BY m.movie_id, m.title
    ORDER BY AVG(r.rating) DESC, m.title ASC
    LIMIT 1
);
