/*
Print the names of all actors who have starred in all movies in which Al pacino has
starred in (it’s ok to report the name of Al pacino in the result; also, it is ok if thse actors have starred in more movies than Al pacino has played in).
*/
-- Al Pacino costar in ALL his movies.
-- CORRELATED NESTED QUERY

SELECT A1.name AS Al_Pacino_Costar
FROM Actor A1
WHERE NOT EXISTS (
	-- All movies mid that "AL" played in them.
	SELECT C.mid
	FROM Cast C,
		(SELECT A.pid AS Pid
		FROM Actor A
		WHERE A.name = 'Al Pacino') Derived
	WHERE C.pid = Derived.pid
	-- Intersect
	MINUS
	-- All movies mid that actor (from outer query) played in them.
	SELECT C1.mid
	FROM Cast C1
	WHERE A1.pid = C1.pid
	);

