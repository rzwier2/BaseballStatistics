use baseballstats;

SELECT PlayerNum AS 'Number', FirstName AS 'First Name', LastName AS 'Last Name', OBP, SLG, (OBP + SLG) AS 'OPS'
FROM hitter INNER JOIN player ON hitter.PlayerID = player.PlayerID
WHERE AtBats > 20;