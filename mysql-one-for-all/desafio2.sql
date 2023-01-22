SELECT
COUNT(DISTINCT m.cancoes_id) AS cancoes,
COUNT(DISTINCT s.artista_id) AS artistas,
COUNT(DISTINCT b.album_id) AS albuns
FROM
SpotifyClone.cancoes AS m,
SpotifyClone.artistas AS s,
SpotifyClone.albuns AS b;