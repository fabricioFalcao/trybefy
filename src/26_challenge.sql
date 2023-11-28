SELECT
    ar.name 'Artista',
    COUNT(ar.id) 'Quantidade de músicas reproduzidas'
FROM history_play_songs h
    INNER JOIN songs s ON s.id = h.song_id
    INNER JOIN albums al ON s.album_id = al.id
    INNER JOIN artists ar ON al.artist_id = ar.id
GROUP BY ar.id
HAVING COUNT(ar.id) > 10
ORDER BY ar.name;