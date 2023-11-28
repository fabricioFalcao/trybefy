SELECT
    ar.name 'Artista',
    COUNT(ar.id) 'Quantidade de músicas'
FROM artists ar
    INNER JOIN albums al ON al.artist_id = ar.id
    INNER JOIN songs s ON s.album_id = al.id
GROUP BY ar.id
ORDER BY
    COUNT(ar.id) DESC,
    ar.name
LIMIT 3;