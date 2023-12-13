-- Qual artista publica mais músicas em cada ano?

SELECT
  artist_name,
  count(artist_name)
AS
  num_songs,
  year
FROM
  tb_song_data
WHERE
  year > 0
GROUP BY
  artist_name,
  year
ORDER BY
  num_songs DESC,
  year DESC