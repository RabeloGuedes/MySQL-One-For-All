SELECT c.nome_cancao AS cancao,
COUNT(h.usuario_id) AS reproducoes
FROM cancoes as c
INNER JOIN historico_de_reproducoes AS h
ON c.cancao_id = h.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;