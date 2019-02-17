/*
Print the movie year, title and rating of the highest rated movie for each years in the period 2005-present, inclusive, in ascending year order. In case of a tie, print all, sorted in ascending alpha order on the title.
*/

SELECT M.year AS Movie_Year, M.name As Movie_Name, MAX(R.rating) AS Highest_Rating 
FROM Movie M, Review R
WHERE M.mid = R.mid AND M.year >= 2005
GROUP BY M.year, M.name
ORDER BY M.year ASC, M.name ASC;
