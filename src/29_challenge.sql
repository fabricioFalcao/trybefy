SELECT ar.name AS 'Artista'
FROM artists_followers af
    INNER JOIN artists ar ON af.artist_id = ar.id
GROUP BY ar.id
ORDER BY COUNT(ar.id) DESC
LIMIT 1;