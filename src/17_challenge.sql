SELECT s.title 'Título'
FROM songs s
    INNER JOIN albums a ON s.album_id = a.id
WHERE a.id = 1
ORDER BY s.title;