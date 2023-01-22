SELECT s.artista AS artista, a.album AS album, COUNT(f.usuario_id) AS seguidores
FROM SpotifyClone.seguindo AS f
INNER JOIN SpotifyClone.artistas AS s ON s.artista_id = f.artista_id
INNER JOIN SpotifyClone.albuns AS a ON a.artista_id = s.artista_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista;