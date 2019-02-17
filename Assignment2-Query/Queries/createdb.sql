CREATE TABLE Movie (
mid VARCHAR2(30),
name VARCHAR2(30),
year INTEGER,
PRIMARY KEY(mid)
);

-- prints the schema
describe Movie;

INSERT INTO Movie (mid,name,year) VALUES ('M1','Scarface',1988);
INSERT INTO Movie (mid,name,year) VALUES ('M2','Scent of a women',1995);
INSERT INTO Movie (mid,name,year) VALUES ('M3','My big fat greek wedding',2000);
INSERT INTO Movie (mid,name,year) VALUES ('M4','The Devil''s Advocate',1997);
INSERT INTO Movie (mid,name,year) VALUES ('M5','Mr. and Mrs Smith',1965);
INSERT INTO Movie (mid,name,year) VALUES ('M6','Now You see me',2013);
INSERT INTO Movie (mid,name,year) VALUES ('M7','Barely Lethal',2014);
INSERT INTO Movie (mid,name,year) VALUES ('M8','The Man with one red shoe',1984);
INSERT INTO Movie (mid,name,year) VALUES ('M9','The Polar Express',2010);
INSERT INTO Movie (mid,name,year) VALUES ('M10','Her',2013);
INSERT INTO Movie (mid,name,year) VALUES ('M11','Lucy',2015);
INSERT INTO Movie (mid,name,year) VALUES ('M12','The Da Vinci Code',2005);
INSERT INTO Movie (mid,name,year) VALUES ('M13','The God Father part II',1975);
INSERT INTO Movie (mid,name,year) VALUES ('M15','Angels and Daemons',2009);
INSERT INTO Movie (mid,name,year) VALUES ('M16','The Island',2010);


CREATE TABLE Genre (
mid VARCHAR2(30),
genre VARCHAR2(30),
PRIMARY KEY(mid, genre),
FOREIGN KEY(mid) REFERENCES Movie(mid)
);

describe Genre;

INSERT INTO Genre (mid,genre) VALUES ('M1','Action');
INSERT INTO Genre (mid,genre) VALUES ('M2','Action');
INSERT INTO Genre (mid,genre) VALUES ('M2','Comedy');
INSERT INTO Genre (mid,genre) VALUES ('M3','Comedy');
INSERT INTO Genre (mid,genre) VALUES ('M4','Thriller');
INSERT INTO Genre (mid,genre) VALUES ('M5','Comedy');
INSERT INTO Genre (mid,genre) VALUES ('M5','Action');
INSERT INTO Genre (mid,genre) VALUES ('M6','Thriller');
INSERT INTO Genre (mid,genre) VALUES ('M7','Action');
INSERT INTO Genre (mid,genre) VALUES ('M8','comedy');
INSERT INTO Genre (mid,genre) VALUES ('M9','comedy');
INSERT INTO Genre (mid,genre) VALUES ('M10','Thriller');
INSERT INTO Genre (mid,genre) VALUES ('M11','Thriller');
INSERT INTO Genre (mid,genre) VALUES ('M12','Action');
INSERT INTO Genre (mid,genre) VALUES ('M12','Thriller');
INSERT INTO Genre (mid,genre) VALUES ('M13','Action');
INSERT INTO Genre (mid,genre) VALUES ('M13','Thriller');
INSERT INTO Genre (mid,genre) VALUES ('M15','Action');
INSERT INTO Genre (mid,genre) VALUES ('M15','Thriller');
INSERT INTO Genre (mid,genre) VALUES ('M16','Action');
INSERT INTO Genre (mid,genre) VALUES ('M16','Comedy');

CREATE TABLE Actor (
pid VARCHAR2(30),
name VARCHAR2(30),
birthdate Date,
gender VARCHAR2(10),
birthplace VARCHAR2(30),
PRIMARY KEY(pid)
); 

describe Actor;

INSERT INTO Actor (pid,name,birthdate,gender,birthplace) VALUES ('P3','Scarlett Johanson',TO_DATE('11/22/84','MM/DD/YY'),'F','Austin');
INSERT INTO Actor (pid,name,birthdate,gender,birthplace) VALUES ('P5','Morgan Freeman',TO_DATE('6/5/53','MM/DD/YY'),'M','Canberra');
INSERT INTO Actor (pid,name,birthdate,gender,birthplace) VALUES ('P6','Al Pacino',TO_DATE('11/12/56','MM/DD/YY'),'M','Portland');
INSERT INTO Actor (pid,name,birthdate,gender,birthplace) VALUES ('P7','Angelina Jolie',TO_DATE('3/3/70','MM/DD/YY'),'F','Seattle');
INSERT INTO Actor (pid,name,birthdate,gender,birthplace) VALUES ('P8','Brad Pitt',TO_DATE('4/4/75','MM/DD/YY'),'M','London');
INSERT INTO Actor (pid,name,birthdate,gender,birthplace) VALUES ('P9','Tom Hanks',TO_DATE('5/19/64','MM/DD/YY'),'M','Perth');
INSERT INTO Actor (pid,name,birthdate,gender,birthplace) VALUES ('P10','Jessica Alba',TO_DATE('8/7/83','MM/DD/YY'),'F','Seoul');
INSERT INTO Actor (pid,name,birthdate,gender,birthplace) VALUES ('P12','Alex Parish', TO_DATE('7/9/77','MM/DD/YY'),'F','San Jose');
INSERT INTO Actor (pid,name,birthdate,gender,birthplace) VALUES ('P13','Jack Nicholson',TO_DATE('11/13/58','MM/DD/YY') ,'M','Austin');
INSERT INTO Actor (pid,name,birthdate,gender,birthplace) VALUES ('P15','Harrison Ford', TO_DATE('9/11/57','MM/DD/YY'),'M','Canberra');
INSERT INTO Actor (pid,name,birthdate,gender,birthplace) VALUES ('P16','Julia Roberts',TO_DATE('1/1/67', 'MM/DD/YY'),'F','Portland');
INSERT INTO Actor (pid,name,birthdate,gender,birthplace) VALUES ('P17','Matt Damon', TO_DATE('1/7/71','MM/DD/YY'),'M','Seattle');
INSERT INTO Actor (pid,name,birthdate,gender,birthplace) VALUES ('P18','Jennifer Lawrence',TO_DATE('2/2/62','MM/DD/YY'),'F','London');
INSERT INTO Actor (pid,name,birthdate,gender,birthplace) VALUES ('P19','George clooney',TO_DATE('3/3/65','MM/DD/YY'),'M','Perth');
INSERT INTO Actor (pid,name,birthdate,gender,birthplace) VALUES ('P20','Jennifer Aniston',TO_DATE('4/4/68','MM/DD/YY'),'F','Seoul');

CREATE TABLE Director (
pid VARCHAR2(30),
name VARCHAR2(30),
birthdate DATE,
gender VARCHAR2(10),
birthplace VARCHAR2(30),
PRIMARY KEY(pid)
);

describe Director;

INSERT INTO Director (pid,name,birthdate,gender,birthplace) VALUES ('P1','Brian de forma',TO_DATE('9/11/40','MM/DD/YY'),'M','New York');
INSERT INTO Director (pid,name,birthdate,gender,birthplace) VALUES ('P2','Martin Brest',TO_DATE('8/8/51','MM/DD/YY'),'M','San Jose');
INSERT INTO Director (pid,name,birthdate,gender,birthplace) VALUES ('P4','Luc Besson',TO_DATE('5/30/75','MM/DD/YY'),'F','Paris');

CREATE TABLE Cast (
mid VARCHAR2(30),
pid VARCHAR2(30),
role VARCHAR2(30),
PRIMARY KEY(mid, pid, role),
FOREIGN KEY(mid) REFERENCES Movie(mid),
FOREIGN KEY(pid) REFERENCES Actor(pid)
);

describe Cast;

INSERT INTO Cast (mid,pid,role) VALUES ('M1','P5','Jessica');
INSERT INTO Cast (mid,pid,role) VALUES ('M1','P6','robert');
INSERT INTO Cast (mid,pid,role) VALUES ('M2','P5','John');
INSERT INTO Cast (mid,pid,role) VALUES ('M2','P6','Mark');
INSERT INTO Cast (mid,pid,role) VALUES ('M3','P9','Alex');
INSERT INTO Cast (mid,pid,role) VALUES ('M3','P7','Julie');
INSERT INTO Cast (mid,pid,role) VALUES ('M4','P5','Jessica');
INSERT INTO Cast (mid,pid,role) VALUES ('M4','P6','Matt');
INSERT INTO Cast (mid,pid,role) VALUES ('M4','P8','Jennifer');
INSERT INTO Cast (mid,pid,role) VALUES ('M5','P7','Jennifer');
INSERT INTO Cast (mid,pid,role) VALUES ('M5','P8','Tom');
INSERT INTO Cast (mid,pid,role) VALUES ('M5','P5','Milo');
INSERT INTO Cast (mid,pid,role) VALUES ('M6','P6','Chris');
INSERT INTO Cast (mid,pid,role) VALUES ('M6','P7','Rose');
INSERT INTO Cast (mid,pid,role) VALUES ('M6','P5','Bill');
INSERT INTO Cast (mid,pid,role) VALUES ('M7','P10','Jane');
INSERT INTO Cast (mid,pid,role) VALUES ('M7','P5','Brad');
INSERT INTO Cast (mid,pid,role) VALUES ('M8','P9','Lucas');
INSERT INTO Cast (mid,pid,role) VALUES ('M8','P10','Juanita');
INSERT INTO Cast (mid,pid,role) VALUES ('M9','P9','Clayne');
INSERT INTO Cast (mid,pid,role) VALUES ('M9','P9','Jane');
INSERT INTO Cast (mid,pid,role) VALUES ('M9','P9','Brad');
INSERT INTO Cast (mid,pid,role) VALUES ('M9','P9','Lucas');
INSERT INTO Cast (mid,pid,role) VALUES ('M9','P9','Bradley');
INSERT INTO Cast (mid,pid,role) VALUES ('M9','P9','Justin');
INSERT INTO Cast (mid,pid,role) VALUES ('M9','P17','Martin');
INSERT INTO Cast (mid,pid,role) VALUES ('M9','P19','Mike');
INSERT INTO Cast (mid,pid,role) VALUES ('M10','P3','Travis');
INSERT INTO Cast (mid,pid,role) VALUES ('M10','P5','Alexander');
INSERT INTO Cast (mid,pid,role) VALUES ('M10','P6','Justin');
INSERT INTO Cast (mid,pid,role) VALUES ('M11','P3','Jessica');
INSERT INTO Cast (mid,pid,role) VALUES ('M11','P5','Johnny');
INSERT INTO Cast (mid,pid,role) VALUES ('M11','P8','Rami');
INSERT INTO Cast (mid,pid,role) VALUES ('M11','P9','Sam');
INSERT INTO Cast (mid,pid,role) VALUES ('M12','P9','Gatek');
INSERT INTO Cast (mid,pid,role) VALUES ('M12','P10','Rose');
INSERT INTO Cast (mid,pid,role) VALUES ('M12','P3','maria');
INSERT INTO Cast (mid,pid,role) VALUES ('M13','P5','Travis');
INSERT INTO Cast (mid,pid,role) VALUES ('M13','P6','Alexander');
INSERT INTO Cast (mid,pid,role) VALUES ('M13','P16','Pearl');
INSERT INTO Cast (mid,pid,role) VALUES ('M15','P12','Sofia');
INSERT INTO Cast (mid,pid,role) VALUES ('M15','P18','chrissy');
INSERT INTO Cast (mid,pid,role) VALUES ('M15','P9','Mike');
INSERT INTO Cast (mid,pid,role) VALUES ('M16','P10','Martin');
INSERT INTO Cast (mid,pid,role) VALUES ('M16','P15','Bill');
INSERT INTO Cast (mid,pid,role) VALUES ('M16','P16','Emilia');

CREATE TABLE Direct (
mid VARCHAR2(30),
pid  VARCHAR2(30),
PRIMARY KEY(mid),
FOREIGN KEY(mid) REFERENCES Movie(mid)
);

describe Direct;

INSERT INTO Direct (mid,pid) VALUES ('M1','P1');
INSERT INTO Direct (mid,pid) VALUES ('M2','P2');
INSERT INTO Direct (mid,pid) VALUES ('M3','P4');
INSERT INTO Direct (mid,pid) VALUES ('M4','P1');
INSERT INTO Direct (mid,pid) VALUES ('M5','P1');
INSERT INTO Direct (mid,pid) VALUES ('M6','P2');
INSERT INTO Direct (mid,pid) VALUES ('M7','P4');
INSERT INTO Direct (mid,pid) VALUES ('M8','P1');
INSERT INTO Direct (mid,pid) VALUES ('M9','P2');
INSERT INTO Direct (mid,pid) VALUES ('M10','P2');
INSERT INTO Direct (mid,pid) VALUES ('M11','P4');
INSERT INTO Direct (mid,pid) VALUES ('M12','P4');
INSERT INTO Direct (mid,pid) VALUES ('M13','P1');
INSERT INTO Direct (mid,pid) VALUES ('M15','P2');
INSERT INTO Direct (mid,pid) VALUES ('M16','P4');


CREATE TABLE Imdb_user (
imdb_id VARCHAR2(30),
email  VARCHAR2(30),
fname VARCHAR2(30),
lname VARCHAR2(30),
birthdate Date,
birthplace VARCHAR2(30),
gender CHAR(1),
PRIMARY KEY(imdb_id)
);

describe Imdb_user;


INSERT INTO Imdb_user (imdb_id,email,fname,lname,birthdate,birthplace,gender) VALUES ('ID1','john@yahoo.com','John ','Smith',TO_DATE('10/5/95','MM/DD/YY'),'FL','M');
INSERT INTO Imdb_user (imdb_id,email,fname,lname,birthdate,birthplace,gender) VALUES ('ID2','juan@gmail.com','Juan ','Carlos',TO_DATE('4/12/94','MM/DD/YY'),'AK','M');
INSERT INTO Imdb_user (imdb_id,email,fname,lname,birthdate,birthplace,gender) VALUES ('ID3','Jane@gmail.com','Jane ','Chapel',TO_DATE('11/2/93','MM/DD/YY'),'IL','F');
INSERT INTO Imdb_user (imdb_id,email,fname,lname,birthdate,birthplace,gender) VALUES ('ID4','adi@yahoo.com','Aditya','Awasthi',TO_DATE('12/12/92','MM/DD/YY'),'CA','M');
INSERT INTO Imdb_user (imdb_id,email,fname,lname,birthdate,birthplace,gender) VALUES ('ID5','james@hotmail.com','James ','Williams',TO_DATE('5/5/91','MM/DD/YY'),'NY','M');
INSERT INTO Imdb_user (imdb_id,email,fname,lname,birthdate,birthplace,gender) VALUES ('ID6','mike@yahoo.com','Mike ','Brown',TO_DATE('3/1/88','MM/DD/YY'),'NC','M');
INSERT INTO Imdb_user (imdb_id,email,fname,lname,birthdate,birthplace,gender) VALUES ('ID7','bob@yahoo.com','Bob ','Jones',TO_DATE('2/7/88','MM/DD/YY'),'NY ','M');
INSERT INTO Imdb_user (imdb_id,email,fname,lname,birthdate,birthplace,gender) VALUES ('ID8','wei@gmail.com',' Wei ','Zhang ',TO_DATE('8/12/85','MM/DD/YY'),'NV','F');
INSERT INTO Imdb_user (imdb_id,email,fname,lname,birthdate,birthplace,gender) VALUES ('ID9','mark@gmail.com','Mark ','Davis',TO_DATE('5/10/84','MM/DD/YY'),'CA','M');
INSERT INTO Imdb_user (imdb_id,email,fname,lname,birthdate,birthplace,gender) VALUES ('ID10','daniel@yahoo.com','Daniel  ','Garcia',TO_DATE('6/1/80','MM/DD/YY'),'NJ','M');
INSERT INTO Imdb_user (imdb_id,email,fname,lname,birthdate,birthplace,gender) VALUES ('ID11','maria@hotmail.com','Maria','Rodriguez',TO_DATE('3/18/75','MM/DD/YY'),'CA','F');
INSERT INTO Imdb_user (imdb_id,email,fname,lname,birthdate,birthplace,gender) VALUES ('ID12','freya@yahoo.com','Freya','Wilson',TO_DATE('2/19/70','MM/DD/YY'),'NJ','F');

CREATE TABLE Review (
mid VARCHAR2(30),
imdb_id  VARCHAR2(30),
rating INTEGER,
votes INTEGER,
publish_date VARCHAR2(30),
PRIMARY KEY(mid,imdb_id),
FOREIGN KEY(mid) REFERENCES Movie(mid),
FOREIGN KEY(imdb_id) REFERENCES Imdb_user(imdb_id)
);

describe Review;


INSERT INTO Review (mid,imdb_id,rating,votes,publish_date) VALUES ('M1','ID1',7,25,'Oct-02-07 09:10:54 PDT');
INSERT INTO Review (mid,imdb_id,rating,votes,publish_date) VALUES ('M2','ID2',8,35,'Sep-29-07 13:45:00 PDT');
INSERT INTO Review (mid,imdb_id,rating,votes,publish_date) VALUES ('M2','ID3',9,24,'Sep-29-07 10:38:25 PDT');
INSERT INTO Review (mid,imdb_id,rating,votes,publish_date) VALUES ('M3','ID4',10,8,'Oct-02-13 13:05:56 PDT');
INSERT INTO Review (mid,imdb_id,rating,votes,publish_date) VALUES ('M3','ID5',9,11,'Oct-25-07 17:15:00 PDT');
INSERT INTO Review (mid,imdb_id,rating,votes,publish_date) VALUES ('M4','ID6',8,6,'Sep-26-07 17:15:00 PDT');
INSERT INTO Review (mid,imdb_id,rating,votes,publish_date) VALUES ('M4','ID7',7,23,'Sep-26-07 17:15:00 PDT');
INSERT INTO Review (mid,imdb_id,rating,votes,publish_date) VALUES ('M5','ID9',9,22,'Sep-28-07 17:15:00 PDT');
INSERT INTO Review (mid,imdb_id,rating,votes,publish_date) VALUES ('M6','ID10',8,26,'Oct-29-07 17:15:00 PDT');
INSERT INTO Review (mid,imdb_id,rating,votes,publish_date) VALUES ('M7','ID11',8,27,'Sep-30-07 17:15:00 PDT');
INSERT INTO Review (mid,imdb_id,rating,votes,publish_date) VALUES ('M7','ID12',8,18,'Oct-25-07 17:15:00 PDT');
INSERT INTO Review (mid,imdb_id,rating,votes,publish_date) VALUES ('M8','ID1',7,19,'Sep-25-07 17:15:00 PDT');
INSERT INTO Review (mid,imdb_id,rating,votes,publish_date) VALUES ('M9','ID2',7,16,'Sep-25-07 17:15:00 PDT');
INSERT INTO Review (mid,imdb_id,rating,votes,publish_date) VALUES ('M10','ID3',8,18,'Sep-29-07 17:15:00 PDT');
INSERT INTO Review (mid,imdb_id,rating,votes,publish_date) VALUES ('M11','ID4',9,22,'Jun-07-15 17:15:00 PDT');
INSERT INTO Review (mid,imdb_id,rating,votes,publish_date) VALUES ('M11','ID5',10,13,'May-05-15 17:15:00 PDT');
INSERT INTO Review (mid,imdb_id,rating,votes,publish_date) VALUES ('M12','ID6',9,50,'May-05-15 17:15:00 PDT');
INSERT INTO Review (mid,imdb_id,rating,votes,publish_date) VALUES ('M13','ID7',5,34,'Oct-25-07 17:15:00 PDT');
INSERT INTO Review (mid,imdb_id,rating,votes,publish_date) VALUES ('M13','ID1',4,34,'Oct-25-07 17:15:00 PDT');
INSERT INTO Review (mid,imdb_id,rating,votes,publish_date) VALUES ('M15','ID10',8,25,'May-05-15 17:15:00 PDT');
INSERT INTO Review (mid,imdb_id,rating,votes,publish_date) VALUES ('M16','ID11',7,12,'May-05-15 17:15:00 PDT');
