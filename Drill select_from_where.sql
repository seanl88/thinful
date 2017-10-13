-- The ID's and durations for all trips of duration greater than 500, ordered by duration.

Select 
	trip_id,
	duration
From 
	trips
Where
	duration > 500
Order By 
	duration DESC

-- Every column of the stations table for station id 84.

Select
	*
From
	stations
Where
	station_id == 84


-- The min temperatures of all the occurrences of rain in zip 94301.

Select
	MinTemperatureF
From
	weather
Where
	Events Like 'Rain' and zip == 94301

