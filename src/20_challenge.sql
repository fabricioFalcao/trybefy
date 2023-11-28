SELECT
    ar.name 'Artista',
    al.title 'Álbum',
    s.title 'Música'
FROM albums al
    INNER JOIN artists ar ON al.artist_id = ar.id
    INNER JOIN songs s ON al.id = s.album_id
WHERE ar.id <> 3
ORDER BY
    ar.name,
    al.title,
    s.title;