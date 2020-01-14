use baseballstats;

SELECT HitterID, PlayerNum AS 'Number', FirstName AS 'First Name', LastName AS 'Last Name', BB, 2B, 3B, HR, AtBats, 
		((0.72 * BB) + (0.884 * (H - (2B + 3B + HR))) + (1.257 * 2B) + (1.593 * 3B) + (2.058 * HR)) / AtBats AS 'Weighted On-Base Percentage '
FROM hitter INNER JOIN player ON hitter.PlayerID = player.PlayerID
WHERE AtBats > 20
GROUP BY HitterID
ORDER BY ((0.72 * BB) + (0.884 * (H - (2B + 3B + HR))) + (1.257 * 2B) + (1.593 * 3B) + (2.058 * HR)) / AtBats desc;
