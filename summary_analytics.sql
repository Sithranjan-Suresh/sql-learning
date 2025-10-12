-- Learning --

SELECT count(*) FROM movies where industry = "bollywood";
select max(imdb_rating) from movies where industry = "bollywood";

select min(imdb_rating) as min_rating, max(imdb_rating) as max_rating, round(avg(imdb_rating),2) as average from movies where industry = "Bollywood";

select studio, count(*) as cnt from movies 
group by studio
order by cnt desc;

-- Exercise --

-- 1. How many movies were released between 2015 and 2022--

select count(*) from movies where release_year >=2015 and release_year <=2022;

-- 2. Print the max and min movie release year --

select min(release_year) as min_year, max(release_year) as max_year from movies;

-- 3. Print each year along with the number of movies released in that year, starting from the most recent year --

select release_year, count(*) as cnt from movies
group by release_year
order by release_year desc