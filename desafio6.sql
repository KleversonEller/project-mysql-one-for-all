SELECT MIN(plan.valor_plano) AS faturamento_minimo,
MAX(plan.valor_plano) AS faturamento_maximo,
ROUND(AVG(plan.valor_plano),2) AS faturamento_medio,
SUM(plan.valor_plano) AS faturamento_total
FROM SpotifyClone.planos AS plan
INNER JOIN SpotifyClone.usuarios AS usr ON usr.plano = plan.plano_id;