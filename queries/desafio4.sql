SELECT u.nome_usuario AS usuario,
IF(MAX(YEAR(h.data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico_de_reproducoes AS h
ON u.usuario_id = h.usuario_id
GROUP BY u.usuario_id
ORDER BY u.nome_usuario;