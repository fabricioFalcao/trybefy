SELECT
    u.full_name 'Nome',
    COUNT(h.user_id) 'Quantidade de músicas reproduzidas'
FROM history_play_songs h
    INNER JOIN users u ON h.user_id = u.id
GROUP BY h.user_id
ORDER BY
    COUNT(h.user_id) DESC,
    u.full_name;