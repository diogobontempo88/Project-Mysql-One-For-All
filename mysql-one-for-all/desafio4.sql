SELECT a.usuario AS usuario,
IF(MAX(YEAR(b.data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.reproducoes AS b
INNER JOIN SpotifyClone.usuarios AS a ON b.usuario_id= a.usuario_id
GROUP BY usuario
ORDER BY usuario;