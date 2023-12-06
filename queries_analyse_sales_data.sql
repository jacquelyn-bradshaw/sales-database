USE shop;

/*Find ALL sales records (and all columns) that took place in the London store,
not in December, but sales concluded by Bill or Frank
for the amount higher than £50 */
SELECT * FROM sales1
WHERE Store = "London"
AND Month != "Dec"
AND SalesPerson IN ("Bill", "Frank")
AND SalesAmount > 50;

-- Find out how many sales took place each week (in no particular order)
SELECT Week, count(Week) AS "Number of Sales"
FROM sales1
GROUP BY Week;

/* Find out how many sales took place each week
AND present data by week in descending order */
SELECT Week, count(Week) AS "Number of Sales"
FROM sales1
GROUP BY Week
ORDER BY Week DESC;

/* Find out how many sales took place each week
AND present data by week in ascending order */
SELECT Week, count(Week) AS "Number of Sales"
FROM sales1
GROUP BY Week
ORDER BY Week ASC;

-- Find out how many sales were recorded each week on different days of the week
SELECT Week, Day, count(Day) AS "Number of Sales"
FROM sales1
GROUP BY Week, Day
ORDER BY Week;

-- Change salesperson's name Inga to Annette
-- Disable safe updates
SET SQL_SAFE_UPDATES = 0;
-- Change Name
UPDATE sales1
SET sales1.SalesPerson = "Annette"
WHERE sales1.SalesPerson = "Inga";
-- Enable safe updates
SET SQL_SAFE_UPDATES = 1;

-- Find out how many sales did Annette do
SELECT SalesPerson, COUNT(SalesPerson) AS "Number of Sales"
FROM sales1
WHERE SalesPerson = "Annette";

-- Find the total sales amount by each person by day
SELECT Day, SalesPerson, SUM(SalesAmount) AS "Total Sales Amount"
FROM sales1
GROUP BY Day, SalesPerson;

-- How much (sum) each person sold for the given period
SELECT SalesPerson, SUM(SalesAmount) AS "Total Sales Amount"
FROM sales1
GROUP BY SalesPerson;

/* How much (sum) each person sold for the given period, including the number of
sales per person, their average, lowest and highest sale amounts */
SELECT SalesPerson,
SUM(SalesAmount) AS "Total Sales Amount",
COUNT(SalesPerson) AS "Number of Sales",
AVG(SalesAmount) AS "Average Sales Amount",
MIN(SalesAmount) AS "Lowest Sales Amount",
MAX(SalesAmount) AS "Highest Sales Amount"
FROM sales1
GROUP BY SalesPerson;

-- Find the total monetary sales amount achieved by each store
SELECT Store, SUM(SalesAmount) AS "Total Sales"
FROM sales1
GROUP BY Store;

/* Find the number of sales by each person if they did less than 3 sales
for the past period */
SELECT SalesPerson, COUNT(SalesPerson) AS "Number of Sales"
FROM sales1
GROUP BY SalesPerson
HAVING COUNT(SalesPerson) < 3;

-- Find the total amount of sales by month where combined total is less than £100
SELECT Month, SUM(SalesAmount) AS "Total Sales"
FROM sales1
GROUP BY Month
HAVING SUM(SalesAmount) < 100;
