--DATA MANIPULATION LANGUAGE (DML)
 
--SELECT STATEMENT
 
--1. Write an SQL code to read Cars Data
SELECT * 
FROM [dbo].[car_data$]

--2. Get a count of all records to get the total number of cars 
SELECT COUNT (*) AS 'Total number of records'
FROM [dbo].[car_data$]

--3. How many Cars will be available in 2023?
SELECT [year], COUNT([year]) AS 'Number of cars'
FROM [dbo].[car_data$]
WHERE [year] = 2023
GROUP BY [year]

--4. How many cars are available in 2020, 2021, 2022?
SELECT [year], COUNT([year]) AS 'Number of cars'
FROM [dbo].[car_data$]
WHERE [year] IN (2020, 2021, 2022)
GROUP BY [year]

--5. Print the total of all cars by year
SELECT [year], COUNT([year]) AS 'Number of cars'
FROM [dbo].[car_data$]
GROUP BY [year]

--6. How many diesel cars will there be in 2020?
SELECT [fuel], COUNT([fuel]) AS 'Number of cars'
FROM [dbo].[car_data$]
WHERE [fuel] = 'diesel'
GROUP BY [fuel]

--7. How many petrol cars will there be in 2020?
SELECT [year], [fuel],  COUNT([fuel]) AS 'Number of cars'
FROM [dbo].[car_data$]
WHERE [fuel] = 'petrol' AND [year] = 2020
GROUP BY [fuel], [year]

--8. print all the fuel cars (petrol, diesel and CNG by all year
SELECT *
FROM [dbo].[car_data$]
WHERE [fuel] IN ('CNG', 'diesel', 'petrol')

--9. There will be more than 100 cars in one year. Which year had more than 100 cars?
SELECT [year], COUNT([year]) AS [Number of cars]
FROM [dbo].[car_data$]
GROUP BY [year]
HAVING COUNT([year]) > '100'

--10. Print a complete list of all cars count details between 2015 and 2023.
SELECT [year], COUNT([year]) AS [Number of cars]
FROM [dbo].[car_data$]
WHERE [year] BETWEEN '2015' AND '2023'
GROUP BY [year]
