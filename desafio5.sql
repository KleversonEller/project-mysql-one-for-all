SELECT msc.cancoes AS cancao,
COUNT(mrep.musica_id) AS reproducoes
FROM SpotifyClone.musicas AS msc
INNER JOIN SpotifyClone.historico_reproducao AS mrep ON msc.musica_id = mrep.musica_id
GROUP BY msc.cancoes ORDER BY reproducoes DESC, cancao LIMIT 2;