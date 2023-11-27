SELECT
    full_name AS 'Nome completo',
    birthday AS 'Data de nascimento'
FROM users
WHERE
    birthday >= '1990-01-01'
    AND active = 1;