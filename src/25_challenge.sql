SELECT
    a.title 'Álbum',
    COUNT(s.album_id) 'Quantidade de músicas reproduzidas'
FROM history_play_songs h
    INNER JOIN songs s ON s.id = h.song_id
    INNER JOIN albums a ON s.album_id = a.id
GROUP BY a.id
ORDER BY
    COUNT(s.album_id) DESC,
    a.title
LIMIT 5;