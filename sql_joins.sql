-- Inner join --

select movies.movie_id, title, budget, revenue, currency, unit
from movies join financials
on movies.movie_id = financials.movie_id;
-- left join --
select movies.movie_id, title, budget, revenue, currency, unit
from movies left join financials
on movies.movie_id = financials.movie_id;

-- right join --
select financials.movie_id, title, budget, revenue, currency, unit
from movies right join financials
on movies.movie_id = financials.movie_id;

-- Full Join --
select movies.movie_id, title, budget, revenue, currency, unit
from movies left join financials
on movies.movie_id = financials.movie_id
UNION
select financials.movie_id, title, budget, revenue, currency, unit
from movies right join financials
on movies.movie_id = financials.movie_id;

-- Exercise --

# Show all the movies with their language names

Select title, name from movies join languages on movies.language_id = languages.language_id;

#Show all Telugu movie names (assuming you don't know the language id for Telugu)
Select title, name from movies join languages on movies.language_id = languages.language_id where name = "Telugu";

