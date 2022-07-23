SELECT c.nome_cancao AS nome_musica,
CASE WHEN c.nome_cancao LIKE '%Streets%'
THEN REPLACE(c.nome_cancao, 'Streets', 'Code Review')
WHEN c.nome_cancao LIKE '%Her_Own%'
THEN REPLACE(c.nome_cancao, 'Her Own', 'Trybe')
WHEN c.nome_cancao LIKE '%Inner_Fire%'
THEN REPLACE(c.nome_cancao, 'Inner Fire', 'Project')
WHEN c.nome_cancao LIKE '%Silly%'
THEN REPLACE(c.nome_cancao, 'Silly', 'Nice')
WHEN c.nome_cancao LIKE '%Circus%'
THEN REPLACE(c.nome_cancao, 'Circus', 'Pull Request')
END AS novo_nome
FROM SpotifyClone.cancoes AS c
WHERE c.nome_cancao LIKE '%Streets%'
OR c.nome_cancao LIKE '%Her_Own%'
OR c.nome_cancao LIKE '%Inner_Fire%'
OR c.nome_cancao LIKE '%Silly%'
OR c.nome_cancao LIKE '%Circus%'
ORDER BY novo_nome;