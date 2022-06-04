SELECT usr.usuario AS usuario,
COUNT(mrep.musica_id) AS qtde_musicas_ouvidas,
round((SUM(msc.duracao_segundos)/60),2) AS total_minutos
FROM SpotifyClone.usuarios AS usr
INNER JOIN SpotifyClone.historico_reproducao AS mrep ON usr.usuario_id = mrep.usuario
INNER JOIN SpotifyClone.musicas AS msc ON mrep.musica_id = msc.musica_id
GROUP BY usr.usuario_id ORDER BY usr.usuario;