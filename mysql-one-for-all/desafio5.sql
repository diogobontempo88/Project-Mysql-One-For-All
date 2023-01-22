SELECT m.cancoes AS cancao, COUNT(h.cancoes_id) AS reproducoes
FROM SpotifyClone.reproducoes AS h
INNER JOIN SpotifyClone.cancoes AS m ON m.cancoes_id = h.cancoes_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;