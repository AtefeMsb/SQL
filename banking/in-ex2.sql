--find the account numbers opened at branches 101 and 102 of the bank
SELECT 	A.account_num
FROM Account A
WHERE A.branch_id IN ('101', '102');
