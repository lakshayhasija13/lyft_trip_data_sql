-- Suppose you are a Data Analyst at Lyft, a ride-sharing platform. For a project, you were given three tables:

-- trips: trips information
-- riders: user data
-- cars: autonomous cars

-- Getting overview of all tables
SELECT * FROM trips;

SELECT * FROM riders;

SELECT * FROM cars;

-- Getting trip log using cross join of riders & cars
SELECT *
FROM riders
CROSS JOIN cars;

-- LEFT JOIN trips and riders which helps us to get all information include information not available in riders table
SELECT *
FROM trips
LEFT JOIN riders
ON trips.rider_id = riders.id;

-- Want to know trips and cars combined data
-- Which join to use ? : INNER JOIN
SELECT *
FROM trips
INNER JOIN cars
ON trips.car_id = cars.id;

-- Stack the riders table on top of the new table named riders2
SELECT *
FROM riders
UNION
SELECT *
FROM riders2;

-- Average Cost of Trips
SELECT AVG(cost)
FROM trips;

-- Riders who used Lyft less than 500 times [Riders table only]
SELECT *
FROM riders
WHERE total_trips < 500;

-- Calculate the number of cars that are active
SELECT COUNT(*)
FROM cars
WHERE status = 'active';

-- Fetch 2 cars with highest trips_completed
SELECT *
FROM cars
ORDER BY trips_completed DESC
LIMIT 2;
