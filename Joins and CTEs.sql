-- What are the three longest trips on rainy days?

Select
	t.duration,
	t.zip_code,
	w.ZIP
From
	trips t
Left Join
	weather w
On	
	t.zip_code = w.ZIP
Where
	events = 'Rain'
Order by
	duration
Limit 3

-- Which station is empty most often?

With
		empty_station
As(
	Select
		AVG(s.docks_available) as avg_docks_available,
		s.station_id
	From
		status s
	Group by
		s.station_id
	Order by
		avg_docks_available desc
	Limit 1)
select
	e.avg_docks_available,
	e.station_id,
	s.name
from
	empty_station e
join
	stations s
on
	e.station_id = s.station_id


-- Return a list of stations with a count of number of trips started at that station but ordered by dock count.

Select
	t.start_station,
	s.name,
	s.dockcount,
	count(t.trip_id) as trip_count
From
	trips t
Left Join
	stations s
On
	t.start_station = s.name
Group by
	s.name
Order by
	s.dockcount desc

-- (Challenge) What's the third longest trip for each day it rains anywhere?

trips

duration
zip_code

weather

events
ZIP

With
	































