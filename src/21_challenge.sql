SELECT
    albums.title 'Álbum',
    SUM(songs.duration_in_seconds) 'Duração'
FROM albums
    INNER JOIN songs ON songs.album_id = albums.id
GROUP BY albums.id
ORDER BY
    SUM(songs.duration_in_seconds) DESC;