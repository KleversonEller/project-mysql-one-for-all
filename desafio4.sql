SELECT usr.usuario AS usuario,
IF((MAX(YEAR(mrep.data_reproducao))=2021),'Usuário ativo','Usuário inativo') AS condicao_usuario
FROM SpotifyClone.usuarios AS usr
INNER JOIN SpotifyClone.historico_reproducao AS mrep ON usr.usuario_id = mrep.usuario
GROUP BY usr.usuario_id ORDER BY usr.usuario;