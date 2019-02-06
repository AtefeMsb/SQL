--select all the account balances where the account has not been openend in a fairfax branch.
SELECT A.balance
FROM Account A
WHERE NOT EXISTS (
	SELECT *
	FROM Branch B
	WHERE B.branch_city = 'fairfax' AND A.branch_id = B.branch_id
);
