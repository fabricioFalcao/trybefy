SELECT name 'Artista'
FROM artists ar
    INNER JOIN albums al ON ar.id = al.artist_id
GROUP BY(artist_id)
HAVING COUNT(al.id) >= 3
ORDER BY name;