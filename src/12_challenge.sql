SELECT
    name 'Artista',
    COUNT(al.id) 'Quantidade de álbuns'
FROM artists ar
    INNER JOIN albums al ON ar.id = al.artist_id
GROUP BY(artist_id)
ORDER BY
    COUNT(al.id) DESC,
    name;