/*
Print all information (mid, title, year, num ratings, rating) for the movie(s) with the
highest rating (include all that tie for first place). Order by ascending mid.
*/
SELECT M.mid, M.name AS TITLE, M.year, COUNT(R1.rating) AS NUM_RATING, MAX(R1.rating) AS MAX_RATING
FROM Movie M, Review R1
WHERE R1.mid = M.mid AND M.mid IN
	(SELECT R.mid
	FROM Review R
	WHERE R.rating = (SELECT MAX(R2.rating) FROM Review R2))
GROUP BY M.mid, M.name, M.year;

