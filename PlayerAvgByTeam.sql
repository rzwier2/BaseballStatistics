use baseballstats;

SELECT HitterID, School, FirstName, LastName, BatAvg, OBP, SLG
FROM team INNER JOIN player ON team.TeamID = player.TeamID
INNER JOIN hitter ON player.PlayerID = hitter.PlayerID
WHERE School LIKE '%Washington College%'
GROUP BY HitterID, BatAvg, OBP, SLG
ORDER BY BatAvg desc;




