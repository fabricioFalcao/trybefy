SELECT
    u.full_name AS 'Nome completo',
    u.email AS 'E-mail',
    p.name AS 'Plano'
FROM users u
    INNER JOIN plans p ON u.plan_id = p.id
ORDER BY full_name