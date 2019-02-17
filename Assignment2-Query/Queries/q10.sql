/*
Find out who is the actor with the highest “longevity.” Print the name of the actor/actress who has been playing in movies for the longest period of time (i.e. the time interval between their first movie and their last movie is the greatest.
*/

SELECT DerivedTable.name
FROM (
	SELECT A.name, MAX(M.year) AS Last, MIN(M.year) AS First, MAX(M.year) - MIN(M.year) As Longevity 
	FROM Actor A, Cast C, Movie M
	WHERE A.pid = C.pid AND C.mid = M.mid
	GROUP By A.name
	) DerivedTable
WHERE ROWNUM = 1
ORDER BY DerivedTable.Longevity DESC;
