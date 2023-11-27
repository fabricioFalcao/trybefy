SELECT
    name 'Artista',
    GROUP_CONCAT(al.title) 'Álbuns'
FROM artists ar
    INNER JOIN albums al ON ar.id = al.artist_id
GROUP BY(name)
ORDER BY(name);