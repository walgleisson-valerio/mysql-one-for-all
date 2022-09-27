SELECT
	u.user AS usuario,
  COUNT(h.played_date) AS qt_de_musicas_ouvidas,
  ROUND(SUM(s.duration_seconds) / 60, 2) AS total_minutos
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.history AS h
	ON u.user_id = h.user_id
INNER JOIN SpotifyClone.songs AS s
	ON h.song_id = s.song_id
GROUP BY usuario ORDER BY usuario;