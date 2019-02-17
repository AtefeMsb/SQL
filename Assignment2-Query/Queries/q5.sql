/*
Find the film(s) with the largest cast. Return the movie title and the size of the cast. By
"cast size" we mean the number of distinct actors that played in that movie: if an actor played multiple roles, or if the actor is simply listed more than once in CASTS, we still count her/him only once.
*/

SELECT DISTINCT M.name, Count AS Max_Count 
FROM
	Movie M,(SELECT C.mid, COUNT(C.mid) AS Count
	FROM Cast C
	GROUP BY C.mid) T
WHERE M.mid = T.mid AND Count =
	(SELECT MAX(T2.Count) AS MaxCount
	FROM (
        	SELECT T.mid AS mid, Count(T.mid) AS Count
        	FROM (SELECT DISTINCT C.mid, C.pid
              		FROM Cast C) T
        	GROUP BY mid) T2);
