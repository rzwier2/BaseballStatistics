use baseballstats;

SELECT School, PlayerNum, FirstName, LastName, AtBats AS 'At Bats', R AS 'R', H AS 'H', 2B AS '2B', 3B AS '3B', HR AS 'HR', RBI AS 'RBI', BB AS 'BB', K AS 'K', SB AS 'SB', CS AS 'CS', BatAvg AS 'AVG', OBP AS 'OBP', SLG AS 'SLG'
FROM (team INNER JOIN player ON team.TeamID = player.TeamID) INNER JOIN hitter ON player.PlayerID = hitter.PlayerID
WHERE (((player.FirstName)="Ryan") AND ((player.LastName)="Zwier"))
ORDER BY hitter.AtBats;

