SELECT a.nome_artista AS artista,
alb.nome_album AS album,
COUNT(usa.artista_id) AS seguidores
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns as alb
ON alb.artista_id = a.artista_id
INNER JOIN SpotifyClone.usuario_segue_artista AS usa
ON a.artista_id = usa.artista_id
GROUP BY album, artista
ORDER BY seguidores DESC,
artista, album;
  