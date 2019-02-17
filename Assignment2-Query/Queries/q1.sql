-- Print names of the cast of the movie “The Davinci Code” in ascending alpha order.
SELECT A.name
FROM Actor A
WHERE A.pid IN
	(SELECT C.pid
	FROM Movie M, Cast C
	WHERE M.mid = C.mid AND M.name = 'The Da Vinci Code')
ORDER BY A.name ASC;
