use baseballstats;

SELECT HitterID, PlayerNum AS 'Number', FirstName AS 'First Name', LastName AS 'Last Name', H AS 'Hits', HR, AtBats, (H - HR) / (AtBats - HR) AS 'AVG on Balls in Play'
FROM hitter INNER JOIN player ON hitter.PlayerID = player.PlayerID
WHERE AtBats > 20
GROUP BY HitterID
ORDER BY (H - HR) / (AtBats - HR) desc;
