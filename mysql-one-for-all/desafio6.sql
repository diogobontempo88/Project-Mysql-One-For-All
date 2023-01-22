SELECT
MIN(valor_plano) AS faturamento_minimo,
MAX(valor_plano) AS faturamento_maximo,
ROUND(AVG(valor_plano), 2) AS faturamento_medio,
ROUND(SUM(valor_plano), 2) AS faturamento_total 
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.planos AS p ON p.plano_id = u.plano_id;