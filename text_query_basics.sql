USE moviesdb;
-- Learning --
SELECT * from movies where industry="Bollywood";
SELECT count(*) from movies where industry="Bollywood";
SELECT distinct industry from movies;
SELECT * from movies where title like "%the%";
SELECT * from movies where studio="";

-- Exercise --
-- Print all movie titles and release year for all Marvel Studios movies. --
select title,release_year from movies where studio like "%Marvel%";
-- Print all movies that have Avenger in their name.--
select * from movies where title like "%Avenger%";
-- Print the year when the movie "The Godfather" was released. --
select release_year from movies where title = "The Godfather";
-- Print all distinct movie studios in the Bollywood industry. --
select distinct studio from movies where industry = "Bollywood";