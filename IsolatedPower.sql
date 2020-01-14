use baseballstats;

SELECT HitterID, PlayerNum AS 'Number', FirstName AS 'First Name', LastName AS 'Last Name', 
		2B, 3B, HR, AtBats, (2B + (2 * 3B) + (3* HR)) / (AtBats) AS 'Isolated Power'
FROM hitter INNER JOIN player ON hitter.PlayerID = player.PlayerID
WHERE AtBats > 20
GROUP BY HitterID
ORDER BY (2B + (2 * 3B) + (3* HR)) / (AtBats) desc;


