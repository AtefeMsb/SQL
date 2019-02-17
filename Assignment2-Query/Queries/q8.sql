/*
Find out who are the “no flop” actors: we will define a “no flop” actor as one who has played only in movies which have a rating greater than or equal to 8. Split this problem into the following steps.
*/

-- Create a view called high ratings which contains the distinct names of all actors who have played in movies with a rating greater than or equal to 8.
CREATE VIEW high_ratings AS
	SELECT DISTINCT A.name
	FROM Actor A, Cast C, Review R
	WHERE A.pid = C.pid AND C.mid = R.mid AND R.rating >= 8;

-- Similarly, create a view called low ratings which contains the distinct names of all actors who have played in movies with a rating less than 8.

CREATE VIEW low_ratings AS
	SELECT DISTINCT A.name
        FROM Actor A, Cast C, Review R
        WHERE A.pid = C.pid AND C.mid = R.mid AND R.rating < 8;

-- Print the number of rows in the view high ratings.
SELECT COUNT(*) AS Count_High_Ratings
FROM high_ratings;

-- Print the number of rows in the view low ratings.
SELECT COUNT(*) AS Count_Low_Ratings
FROM low_ratings;

-- Use the above views to print the number of “no flop” actors in the database.
SELECT COUNT(*) AS No_Flop_Number
FROM (
	SELECT H.name AS Name
	FROM high_ratings H 
	MINUS
	SELECT L.name AS Name
	FROM low_ratings L
	);

-- Finally, use the above view to print the names of these “no flop” actors, along with the number M of movies they have played in, sorted by descending M and then by ascending name, and print only the top 10.
SELECT A.name, COUNT(A.name) AS Count_Of_Movies
FROM  (  
	SELECT H.name AS Name
        FROM high_ratings H
        MINUS
        SELECT L.name AS Name
        FROM low_ratings L
	) DerivedTable, Actor A, Cast C
WHERE DerivedTable.Name = A.name AND C.pid = A.pid AND ROWNUM <= 10
GROUP BY A.name
ORDER By Count_Of_Movies DESC, A.name ASC;
