SELECT
    ar.name AS 'Artista',
    COUNT(ar.id) AS 'Total de seguidores'
FROM artists_followers af
    INNER JOIN artists ar ON af.artist_id = ar.id
GROUP BY ar.id
HAVING COUNT(ar.id) < 5;