SELECT
	s.song AS cancao,
  COUNT(h.user_id) AS reproducoes
FROM SpotifyClone.history AS h
INNER JOIN SpotifyClone.songs AS s
	ON s.song_id = h.song_id
GROUP BY h.song_id
ORDER BY COUNT(h.user_id) DESC, s.song
LIMIT 2;