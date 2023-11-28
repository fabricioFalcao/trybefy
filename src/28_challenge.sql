SELECT
    u.full_name AS 'Pessoa usuária',
    COUNT(u.id) AS 'Artistas que segue'
FROM artists_followers af
    INNER JOIN users u ON af.user_id = u.id
GROUP BY u.id
ORDER BY u.full_name;