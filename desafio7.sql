SELECT
	art.artist AS artista,
    alb.album AS album,
    COUNT(f.artist_id) AS seguidores
FROM SpotifyClone.artists AS art
INNER JOIN SpotifyClone.albums AS alb
	ON art.artist_id = alb.artist_id
INNER JOIN SpotifyClone.followers AS f
	ON art.artist_id = f.artist_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista, album;