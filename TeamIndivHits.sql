use baseballstats;

SELECT HitterID, School, FirstName, LastName, SUM(H) AS 'Total Hits', SUM(2B) AS 'Total Doubles', 
		SUM(3B) AS 'Total Triples', SUM(HR) AS 'Total Homeruns'
FROM team INNER JOIN player ON team.TeamID = player.TeamID
INNER JOIN hitter ON player.PlayerID = hitter.PlayerID
WHERE School LIKE '%Washington College%'
GROUP BY HitterID
ORDER BY SUM(H) desc;
