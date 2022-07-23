SELECT c.nome_cancao AS nome,
COUNT(h.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_de_reproducoes AS h
ON h.cancao_id = c.cancao_id
INNER JOIN SpotifyClone.usuarios AS u
ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.planos AS p
ON u.id_plano = p.id_plano
WHERE p.nome_do_plano = 'gratuito'
OR p.nome_do_plano = 'pessoal'
GROUP BY nome;  
  
