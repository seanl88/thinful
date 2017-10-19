-- What's the most expensive listing? What else can you tell me about the listing?

select
	Max(price),
	summary,
	accommodates,
	bathrooms,
	bedrooms,
	beds,
	neighbourhood_cleansed
from
	listings2

-- This newly constructed estate home is discretely nestled within 11 manicured acres and boasts it's own private lake and waterfall for 
-- guests to enjoy. The location offers convenient access to  SXSW, ACL, Hamilton Pool, & multiple vineyards. Accommodates 2. 1 Bathroom, 1 bedroom,
-- 1 bed. Located in the 78738 zip code.

------------------------------------------------------------------------------------------------------------------------------------------------------

-- What neighborhoods seem to be the most popular?

Select
	neighbourhood_cleansed,
	count(number_of_reviews)
from
	listings2
Group by
	number_of_reviews
Order by
	number_of_reviews


-- What time of year is the cheapest time to go to your city? What about the busiest?


-- The cheapest time to visit Austin is in March and April.

Select
	price,
	date1,
	available
From
	calendar c
Where
	available == 't'
Group by
	date1
Order by
	price

-- The busiest time for AirBnB in Austin is in March - specifically when the SXSW conference is in town.

Select
	available,
	date1,
	count(*) as rooms
from
	calendar
Where
	available = 'f'
Group by
	date1
Order by
	rooms desc









