SELECT
    title 'Album',
    release_year 'Ano de lançamento',
    name 'Artista'
FROM albums al
    INNER JOIN artists ar ON al.artist_id = ar.id
WHERE al.title LIKE '%you%'
ORDER BY release_year ASC;