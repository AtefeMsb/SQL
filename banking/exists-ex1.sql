--select all the account balances where the account has been opened in a branch in fairfax.
SELECT A.balance
FROM Account A
WHERE EXISTS (SELECT *
		 FROM Branch B
		 WHERE B.branch_city = 'fairfax' AND B.branch_id = A.branch_id);
