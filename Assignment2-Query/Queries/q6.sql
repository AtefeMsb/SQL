/*
Find actors that played five or more distinct roles in the same movie during the year 2010. Write a query that returns the actors' names, the movie name, and the number of distinct roles that they played in that movie (which will be ≥ 5).
*/

SELECT A.name AS Actor_Name, M.name AS Movie_Name , COUNT(*) AS Num_Distnict_Role
FROM Movie M, Actor A, Cast C
WHERE A.pid = C.pid AND C.mid = M.mid AND M.year = 2010
GROUP By M.name, A.name
HAVING COUNT(*) >= 5;
