SELECT
	COUNT(s.song_id) AS cancoes,
  COUNT(DISTINCT art.artist_id) AS artistas,
  COUNT(DISTINCT alb.album_id) AS albuns
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.artists AS art
	ON s.artist_id = art.artist_id
INNER JOIN SpotifyClone.albums AS alb
	ON s.album_id = alb.album_id;