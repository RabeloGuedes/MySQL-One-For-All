SELECT a.nome_artista AS artista,
alb.nome_album AS album
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS alb
ON a.artista_id = alb.artista_id
WHERE a.nome_artista = 'Walter Phoenix';
  