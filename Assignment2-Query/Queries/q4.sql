/*
A decade is any sequence of 10 consecutive years (e.g., 2000, 2001, ..., 2010 is a decade). Find the decade with the largest number of films (output only the first year of the decade).
*/
/*
-- This is a solution for when we assume decade is a period of ten years beginning with a year whose last digit is zero. 
SELECT Decade AS Decade_With_Most_Movie
FROM (
	SELECT DerivedTable.Decade AS Decade, COUNT(DerivedTable.Decade) AS Count 
	FROM
 		(SELECT M.mid, FLOOR(M.year / 10) * 10 AS Decade
		FROM Movie M
		) DerivedTable
	GROUP BY DerivedTable.Decade
	)
WHERE ROWNUM = 1
ORDER BY Count DESC;
*/


-- This is a solution for when we assume decade is 10 consecutive years starting from any year.

CREATE VIEW YearRange AS 
SELECT DISTINCT M1.year AS StartYear, M1.year + 9 AS EndYear, M1.name, COUNT(*) AS Total
FROM Movie M1, Movie M2
WHERE M2.year >= M1.year AND M2.year < M1.year + 10
GROUP BY M1.year, M1.Name;

SELECT Y.startYear
FROM  YearRange Y
WHERE Y.Total = (SELECT MAX(Y2.Total)
		FROM YearRange Y2);
