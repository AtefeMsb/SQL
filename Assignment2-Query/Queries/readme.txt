--------------------------- Assignment 2 ------------------------------------
Class:		Database Systems
Homework:	Assignment 2
Name:		Atefe Mosayebi
Student ID:	1461654
Database:	db11g

-----------------------------------------------------------------------------
Tables: 

- Movie(mid, name, year) 
	PRIMARY KEY(mid) 

- Genre(mid, genre) 
	PRIMARY KEY(mid, genre)
	FOREIGN KEY(mid) REFERENCES Movie(mid)

- Actor(pid, name, birthdate, gender, birthplace)
	PRIMARY KEY(pid)

- Director(pid, name, birthdate, gender, birtjplace)
	PRIMARY KEY(pid)

- Cast(mid, pid, role) 
	PRIMARY KEY(mid, pid, role)
	FOREIGN KEY(mid) REFERENCES Movie(mid)
	FOREIGN KEY(pid) REFERENCES Actor(pid)

- Direct(mid, pid)
	PRIMARY KEY(mid)
	FOREIGN KEY(mid) REFERENCES Movie(mid)

- Imdb_user(imdb_id, email, fname, lname, birthdate, birthplace, gender)
	PRIMARY KEY(imdb_id)

- Review(mid, imdb_id, rating, votes, publish_date)
	PRIMARY KEY(mid,imdb_id)
	FOREIGN KEY(mid) REFERENCES Movie(mid)
	FOREIGN KEY(imdb_id) REFERENCES Imdb_user(imdb_id)

-----------------------------------------------------------------------------
Queries Excution Results:

SQL> @q1

NAME
------------------------------
Jessica Alba
Scarlett Johanson
Tom Hanks


SQL> @q2

MID			       TITLE				    YEAR
------------------------------ ------------------------------ ----------
NUM_RATING MAX_RATING
---------- ----------
M3			       My big fat greek wedding 	    2000
	 2	   10

M11			       Lucy				    2015
	 2	   10



SQL> @q3

MID			       NAME				    YEAR
------------------------------ ------------------------------ ----------
M13			       The God Father part II		    1975



SQL> @q4

View created.


 STARTYEAR
----------
      2009
      2005



SQL> @q5

NAME				MAX_COUNT
------------------------------ ----------
Lucy					4



SQL> @q6

ACTOR_NAME		       MOVIE_NAME		      NUM_DISTNICT_ROLE
------------------------------ ------------------------------ -----------------
Tom Hanks		       The Polar Express			      6


SQL> @q7

MOVIE_YEAR MOVIE_NAME			  HIGHEST_RATING
---------- ------------------------------ --------------
      2005 The Da Vinci Code			       9
      2009 Angels and Daemons			       8
      2010 The Island				       7
      2010 The Polar Express			       7
      2013 Her					       8
      2013 Now You see me			       8
      2014 Barely Lethal			       8
      2015 Lucy 				      10

8 rows selected.




SQL> @q8

View created.


View created.


COUNT_HIGH_RATINGS
------------------
		 9


COUNT_LOW_RATINGS
-----------------
		9


NO_FLOP_NUMBER
--------------
	     4


NAME			       COUNT_OF_MOVIES
------------------------------ ---------------
Angelina Jolie				     3
Scarlett Johanson			     3
Alex Parish				     1
Jennifer Lawrence			     1






SQL> @q9

AL_PACINO_COSTAR
------------------------------
Morgan Freeman
Al Pacino





SQL> @q10

NAME
------------------------------
Al Pacino

