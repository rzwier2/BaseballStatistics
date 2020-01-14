use baseballstats;

SELECT team.School, Sum(hitter.AtBats) AS 'At Bats', Sum(hitter.R) AS 'R', Sum(hitter.H) AS 'H', Sum(hitter.2B) AS '2B', Sum(hitter.3B) AS '3B', Sum(hitter.HR) AS 'HR', Sum(hitter.RBI) AS 'RBI', Sum(hitter.BB) AS 'BB', Sum(hitter.K) AS 'K', Sum(hitter.SB) AS 'SB', Sum(hitter.CS) AS 'CS', Avg(hitter.BatAvg) AS 'AVG', Avg(hitter.OBP) AS 'OBP', Avg(hitter.SLG) AS 'SLG'
FROM (team INNER JOIN player ON team.TeamID = player.TeamID) INNER JOIN hitter ON player.PlayerID = hitter.PlayerID
GROUP BY team.School
HAVING (((TEAM.School)="Washington College"));

