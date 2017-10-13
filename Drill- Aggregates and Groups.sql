-- What was the hottest day in our data set? Where was that?

Select

    weather.Date,
    MAX(MaxTemperatureF),
    weather.ZIP

From
    
    weather

-- How many trips started at each station?

Select

	start_station,
	Count(trip_id)

From

	trips

Group by

	start_station


-- What's the shortest trip that happened?

Select

	trip_id,
	MIN(duration)

From

	trips


-- What is the average trip duration, by end station?

Select

	end_station,
	(AVG(duration))

From

	trips

Group by

	end_station




