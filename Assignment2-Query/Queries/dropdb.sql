-- CASCADE CONSTRAINTS is needed because table Movie has some other tables pointing to it.
DROP TABLE Movie CASCADE CONSTRAINTS;
DROP TABLE Genre;
DROP TABLE Actor CASCADE CONSTRAINTS;
DROP TABLE Director;
DROP TABLE Cast;
DROP TABLE Direct;
DROP TABLE Imdb_user CASCADE CONSTRAINTS;
DROP TABLE Review;
DROP VIEW high_ratings;
DROP VIEW low_ratings;
DROP VIEW YearRange;
