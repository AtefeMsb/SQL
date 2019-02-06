CREATE TABLE Branch (
branch_id VARCHAR2(30),
branch_city VARCHAR2(30),
assets VARCHAR2(30),
PRIMARY KEY(branch_id)
);

INSERT INTO Branch (branch_id,branch_city,assets) VALUES ('101','campbell','');
INSERT INTO Branch (branch_id,branch_city,assets) VALUES ('102','fairfax','');
INSERT INTO Branch (branch_id,branch_city,assets) VALUES ('103','santa clara','');
INSERT INTO Branch (branch_id,branch_city,assets) VALUES ('104','fairfax','');
INSERT INTO Branch (branch_id,branch_city,assets) VALUES ('105','los gatos','');
INSERT INTO Branch (branch_id,branch_city,assets) VALUES ('106','fairfax','');

CREATE TABLE Customer (
customer_id VARCHAR2(30),
customer_name VARCHAR2(30),
customer_city VARCHAR2(30),
PRIMARY KEY(customer_id)
);

INSERT INTO Customer (customer_id,customer_name,customer_city) VALUES ('1000','dustin','campbell');
INSERT INTO Customer (customer_id,customer_name,customer_city) VALUES ('1001','brutus','campbell');
INSERT INTO Customer (customer_id,customer_name,customer_city) VALUES ('1002','lubber','san jose');
INSERT INTO Customer (customer_id,customer_name,customer_city) VALUES ('1003','andy','los gatos');
INSERT INTO Customer (customer_id,customer_name,customer_city) VALUES ('1004','rusty','los gatos');
INSERT INTO Customer (customer_id,customer_name,customer_city) VALUES ('1005','horatio','fairfax');
INSERT INTO Customer (customer_id,customer_name,customer_city) VALUES ('1006','zobra','fairfax');
INSERT INTO Customer (customer_id,customer_name,customer_city) VALUES ('1007','art','campbell');
INSERT INTO Customer (customer_id,customer_name,customer_city) VALUES ('1008','bob','campbell');
INSERT INTO Customer (customer_id,customer_name,customer_city) VALUES ('1009','jack','san jose');
INSERT INTO Customer (customer_id,customer_name,customer_city) VALUES ('1010','joe','sunnyvale');


CREATE TABLE Account (
account_num VARCHAR2(30),
branch_id VARCHAR2(30),
balance VARCHAR2(30),
PRIMARY KEY(account_num),
FOREIGN KEY(branch_id) REFERENCES Branch(branch_id)
	ON DELETE CASCADE
);

INSERT INTO Account (account_num,branch_id,balance) VALUES ('1','102','100');
INSERT INTO Account (account_num,branch_id,balance) VALUES ('2','104','37233');
INSERT INTO Account (account_num,branch_id,balance) VALUES ('3','106','27837');
INSERT INTO Account (account_num,branch_id,balance) VALUES ('4','102','37220');
INSERT INTO Account (account_num,branch_id,balance) VALUES ('5','104','9308');
INSERT INTO Account (account_num,branch_id,balance) VALUES ('6','101','90');
INSERT INTO Account (account_num,branch_id,balance) VALUES ('7','103','987');
INSERT INTO Account (account_num,branch_id,balance) VALUES ('8','105','1044');

CREATE TABLE Depositor (
customer_id VARCHAR2(30),
account_num VARCHAR2(30),
PRIMARY KEY(customer_id, account_num),
FOREIGN KEY(customer_id) REFERENCES Customer(customer_id) ON DELETE CASCADE,
FOREIGN KEY(account_num) REFERENCES Account(account_num) ON DELETE CASCADE
);

INSERT INTO Depositor (customer_id,account_num) VALUES ('1000','1');
INSERT INTO Depositor (customer_id,account_num) VALUES ('1000','2');
INSERT INTO Depositor (customer_id,account_num) VALUES ('1000','3');
INSERT INTO Depositor (customer_id,account_num) VALUES ('1010','4');
INSERT INTO Depositor (customer_id,account_num) VALUES ('1010','5');

-- prints out schema and data
describe Branch
describe Customer
describe Account
describe Depositor


