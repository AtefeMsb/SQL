
-- Print all information of the movies that have both a) the highest number of ratings; and b) the lowest average.

-- gropus that have highest number of rating
-- INTERSECT
-- groups that have lowest average 

SELECT M.mid, M.name, m.year
FROM Movie M
WHERE M.mid IN 
	(SELECT R2.mid
	FROM Review R2
	GROUP BY R2.mid
	HAVING COUNT(*) >=
		(SELECT MAX(Num)
		FROM (SELECT COUNT(R.mid) AS Num
			FROM Review R 
			GROUP BY R.mid))
	INTERSECT
	SELECT R2.mid
	FROM Review R2
	GROUP BY R2.mid
	HAVING AVG(R2.rating) =
        	(SELECT MIN(Avg)
       		 FROM (SELECT AVG(R.rating) AS Avg
               		 FROM Review R
               		 GROUP BY R.mid))
	);
