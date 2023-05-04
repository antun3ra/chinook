SELECT t.genre_id, g.name, COUNT(t.genre_id) AS quantity, SUM(t.unit_price) AS total_value,
ROW_NUMBER() OVER(ORDER BY COUNT(t.genre_id) DESC) AS ranking
FROM "track" AS t 
JOIN genre AS g ON t.genre_id = g.genre_id 
group BY t.genre_id, t.unit_price;