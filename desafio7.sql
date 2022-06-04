SELECT art.artista AS artista,
alb.album AS album,
COUNT(artF.usuario) AS seguidores
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb ON alb.artista = art.artista_id
INNER JOIN SpotifyClone.artistas_favoritos AS artF ON artF.seguindo_artistas = art.artista_id
GROUP BY art.artista, alb.album ORDER BY seguidores DESC, artista, album;