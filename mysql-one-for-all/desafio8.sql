SELECT s.artista AS artista, a.album AS album
FROM SpotifyClone.albuns AS a
INNER JOIN SpotifyClone.artistas AS s ON s.artista_id= a.artista_id
WHERE artista = 'Walter Phoenix'
ORDER BY album;