
SELECT year(current_date());
SELECT *, year(current_date()) - birth_year as age FROM actors ;
SELECT *, (revenue-budget) as profit from financials;

-- USD --> INR: 88

select distinct unit from financials;
-- Billions --> rev * 100
-- THousands --> rev/100

Select *,
	CASE
		WHEN unit = "thousands" THEN revenue/1000
		WHEN unit = "billions" THEN revenue * 1000
		ELSE revenue
	end as rev_mln 
from financials;

-- Exercise --

-- Print profit % for all the movies --

select *,
ROUND((((revenue-budget)/(revenue))*100),2) as profit_percent from financials order by profit_percent desc;