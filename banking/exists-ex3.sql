--find customers who opened accounts in ALL branches in fairfax.
/* SELECT C.customer_id
FROM Customer C
WHERE NOT EXISTS (
	SELECT B.branch_id
	FROM Branch B
	WHERE B.branch_city = 'fairfax'
	MINUS
	SELECT A.branch_id
	FROM Depositor D, Account A
	WHERE D.customer_id = C.customer_id AND D.account_num = A.account_num
);
 */

/*
-- second way with 
SELECT C.customet_id
FROM Customer C
WHERE 
(SELECT A.account_num
FROM Account A
WHERE A.branch_id
=All (
SELECT B.branch_id
FROM Branch B
WHERE B.branch_city = 'fairfax'))
*/

SELECT *
FROM Depositor D
Group By D.customer_id
HAVING D.account_num = ALL (
	SELECT A.account_num
        FROM Branch B, Account A
        WHERE B.branch_id = A.branch_id AND B.branch_city = 'fairfax'	
); 
