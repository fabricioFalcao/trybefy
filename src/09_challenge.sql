SELECT
    p.name AS 'Plano',
    COUNT(plan_id) AS 'Quantidade de usuários'
FROM users u
    INNER JOIN plans p ON u.plan_id = p.id
GROUP BY(plan_id)