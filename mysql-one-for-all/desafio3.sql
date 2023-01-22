SELECT b.usuario AS usuario, COUNT(a.cancoes_id) AS qtde_musicas_ouvidas, FORMAT(SUM(s.duracao_segundos) /60, 2) AS total_minutos
FROM SpotifyClone.reproducoes AS a
INNER JOIN SpotifyClone.cancoes AS s ON a.cancoes_id = s.cancoes_id
INNER JOIN SpotifyClone.usuarios AS b ON a.usuario_id = b.usuario_id
GROUP BY b.usuario_id
ORDER BY usuario;