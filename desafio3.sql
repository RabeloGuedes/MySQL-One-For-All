SELECT u.nome_usuario AS usuario,
COUNT(h.usuario_id) AS qtde_musicas_ouvidas,
ROUND(SUM(c.duracao_minutos / 60), 2) AS total_minutos
FROM usuarios AS u
INNER JOIN historico_de_reproducoes AS h
ON u.usuario_id = h.usuario_id
INNER JOIN cancoes AS c
ON h.cancao_id = c.cancao_id
GROUP BY u.nome_usuario;