SELECT art.artista AS artista,
alb.album AS album
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb ON alb.artista = art.artista_id
WHERE art.artista = 'Walter Phoenix';