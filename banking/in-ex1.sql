--Find the account numbers opened at branches of the bank in Fairfax. 
SELECT A.account_num
FROM Account A
WHERE A.branch_id IN (SELECT B.branch_id
			FROM branch B
			WHERE B.branch_city = 'fairfax');	
