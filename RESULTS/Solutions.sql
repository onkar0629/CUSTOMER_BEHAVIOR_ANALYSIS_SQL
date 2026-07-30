-- ##########################################################################
-- CUSTOMER BEHAVIOR ANALYSIS
-- SQL PORTFOLIO PROJECT

-- Author   : Onkar Jadhav
-- Database : customer_behavior_analysis
-- Total Questions : 30
-- ##########################################################################

USE customer_behavior_analysis;

-- ##########################################################################
-- Question : Q1
-- ##########################################################################
-- Q1. How many customers registered in the first six months of 2017? Name the column registration_count.

SELECT COUNT(*) AS Registration_Count
FROM customers
WHERE YEAR(registration_date) = 2017
  AND MONTH(registration_date) BETWEEN 1 AND 6;

-- ##########################################################################
-- Question : Q2
-- ##########################################################################
-- Q2. Show the number of registrations in the current week.
-- Name the column registrations_current_week.

SELECT COUNT(*) AS registrations_current_week
FROM customers
WHERE WEEK(registration_date) = WEEK(CURDATE())
  AND YEAR(registration_date) = YEAR(CURDATE());

-- ##########################################################################
-- Question : Q3
-- ##########################################################################
-- Q3. Create a report containing the 2017 monthly registration counts.
-- Show the registration_month and registration_count columns. Order the results by month.

SELECT
    MONTH(registration_date) AS registration_month,
    COUNT(*) AS registration_count
FROM customers
WHERE YEAR(registration_date) = 2017
GROUP BY registration_month
ORDER BY registration_month;

-- ##########################################################################
-- Question : Q4
-- ##########################################################################
-- Q4. Find the registration count for each month in each year.
-- Show the following columns: registration_year, registration_month, and registration_count.
-- Order the results by year and month.

SELECT
    YEAR(registration_date) AS registration_year,
    MONTH(registration_date) AS registration_month,
    COUNT(*) AS registration_count
FROM customers
GROUP BY
    YEAR(registration_date),
    MONTH(registration_date)
ORDER BY
    registration_year,
    registration_month;


-- ##########################################################################
-- Question : Q5
-- ##########################################################################
-- Q5. Write an SQL query to find the number of customer registrations per year for each channel.

SELECT
    YEAR(c.registration_date) AS registration_year,
    ch.channel_name,
    COUNT(*) AS registration_count
FROM customers c
         JOIN channels ch
              ON c.channel_id = ch.id
GROUP BY
    YEAR(c.registration_date),
    ch.channel_name
ORDER BY
    registration_year,
    ch.channel_name;

-- ##########################################################################
-- Question : Q6
-- ##########################################################################
-- Q6. Write an SQL query to find the number of customer registrations per year for organic search channel.

-- SubQuery

SELECT
    YEAR(registration_date) AS registration_year,
    COUNT(*) AS registration_count
FROM customers
WHERE channel_id = (
    SELECT id
    FROM channels
    WHERE channel_name = 'Organic Search'
)
GROUP BY YEAR(registration_date)
ORDER BY registration_year;

-- Joins

SELECT
    YEAR(c.registration_date) AS registration_year,
    COUNT(*) AS registration_count
FROM customers c
         JOIN channels ch
              ON c.channel_id = ch.id
WHERE ch.channel_name = 'Organic Search'
GROUP BY registration_year
ORDER BY registration_year;

-- CTE

WITH organic_channel AS (
    SELECT id
    FROM channels
    WHERE channel_name = 'Organic Search'
)
SELECT
    YEAR(c.registration_date) AS registration_year,
    COUNT(*) AS registration_count
FROM customers c
         JOIN organic_channel oc
              ON c.channel_id = oc.id
GROUP BY YEAR(c.registration_date)
ORDER BY registration_year;

-- ##########################################################################
-- Question : Q7
-- ##########################################################################
-- Q7. Create a report to show the weekly counts of registration in 2017, based on the customer country.
-- Show the following columns: registration_week, country, and registration_count. Order the results by week.

SELECT
    WEEK(registration_date) AS registration_week,
    country,
    COUNT(*) AS registration_count
FROM customers
WHERE YEAR(registration_date) = 2017
GROUP BY
    country,
    registration_week
ORDER BY
    registration_week;

-- ##########################################################################
-- Question : Q8
-- ##########################################################################
-- Q8. Among customers registered in 2017, show how many made at least one purchase
-- (name the column customers_with_purchase) and the number of all the customers registered
-- in 2017 (name the column all_customers).

-- Left Join

SELECT
    COUNT(DISTINCT o.customer_id) AS customers_with_purchase,
    COUNT(DISTINCT c.customer_id) AS all_customers
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE YEAR(c.registration_date) = 2017;

-- ##########################################################################
-- Question : Q9
-- ##########################################################################
-- Q9. Find the lifetime conversion rate among customers who registered in 2017.
-- Show the result in a column named conversion_rate.
-- Round the result to four decimal places.

SELECT
    ROUND(
            COUNT(DISTINCT o.customer_id) / COUNT(DISTINCT c.customer_id),
            4
    ) AS Conversion_rate
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE YEAR(c.registration_date) = 2017;

-- ##########################################################################
-- Question : Q10
-- ##########################################################################
-- Q10. Find the conversion rate for each customer channel. Show the channel_name and
-- conversion_rate columns. Display the conversion rates as percentages rounded to two decimal places.


SELECT
    ch.channel_name,
    ROUND(
            COUNT(DISTINCT o.customer_id) / COUNT(DISTINCT c.customer_id) * 100,
            2
    ) AS Conversion_Percentages
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
JOIN channels ch
ON c.channel_id = ch.id
GROUP BY ch.channel_name;

-- ##########################################################################
-- Question : Q11
-- ##########################################################################
-- Q11. Create a report showing conversion rates in monthly basis. Display the conversion
-- rates as ratios, rounded to three decimal places. Show the following
-- columns: year, month, and conversion_rate. Order the results by year and month.

SELECT
    YEAR(c.registration_date) AS Year,
    MONTH(c.registration_date) AS Month,
    ROUND(
            COUNT(DISTINCT o.customer_id) / COUNT(DISTINCT c.customer_id),3
    ) AS Conversion_Ratios
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY
    YEAR(c.registration_date),
    MONTH(c.registration_date)
ORDER BY
    YEAR(c.registration_date),
    MONTH(c.registration_date);

-- ##########################################################################
-- Question : Q12
-- ##########################################################################
-- Q12. Create a report containing the conversion rates for weekly registration in each
-- registration channel, based on customers registered in 2017. Show the following
-- columns: week, channel_name, and conversion_rate. Format the conversion rates as percentages,
-- rounded to a single decimal place. Order the results by week and channel name.

SELECT
    WEEK(c.registration_date) AS week,
    ch.channel_name,
    ROUND(
            COUNT(DISTINCT o.customer_id) / COUNT(DISTINCT c.customer_id) * 100,
            1
    ) AS conversion_rate
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
JOIN channels ch
on c.channel_id = ch.id
where year(registration_date) = 2017
GROUP BY
    Week ,
    ch.channel_name
ORDER BY
    week,
    ch.channel_name;

-- ##########################################################################
-- Question : Q13
-- ##########################################################################
-- Q13. Show customers' emails and interval between their first purchase and the date of
-- registration. Name the column difference.

SELECT
    email,
    DATEDIFF(first_order_date, registration_date) AS difference
FROM customers;

-- ##########################################################################
-- Question : Q14
-- ##########################################################################
-- Q14. Find the average time from registration to first order for each channel.
-- Show two columns: channel_name and avg_days_to_first_order.

SELECT
    ch.channel_name,
    AVG(DATEDIFF(c.first_order_date, c.registration_date)) AS avg_days_to_first_order
FROM customers c
JOIN channels ch
ON c.channel_id = ch.id
GROUP BY ch.channel_name;

-- ##########################################################################
-- Question : Q15
-- ##########################################################################
-- Q15. Calculate the average number of days that passed between registration and first order in quarterly registration basis. Show the following columns: year, quarter, and avg_days_to_first_order. Order the results by year and quarter.


-- ##########################################################################
-- Question : Q16
-- ##########################################################################
-- Q16. Create a report of the average time to first order for weekly registration basis from 2017 in each registration channel. Show the following columns: week, channel_name, and avg_days_to_first_order. Order the results by the week.


-- ##########################################################################
-- Question : Q17
-- ##########################################################################
-- Q17. Find all customers who placed their first order within one month from registration, and their last order within three months from registration – let's see who's stopped ordering. For each customer show these columns: email, full_name, first_order_date, last_order_date.


-- ##########################################################################
-- Question : Q18
-- ##########################################################################
-- Q18. Our e-store has used three versions of the registration form:
-- 'ver1' – introduced when the e-store started.
-- 'ver2' – introduced on Mar 14, 2017.
-- 'ver3' – introduced on Jan 1, 2018.


-- ##########################################################################
-- Question : Q19
-- ##########################################################################
-- Q19. Show two metrics in two different columns:
-- order_on_registration_date – the number of people who made their first order within one day from their registration date.
-- order_after_registration_date – the number of people who made their first order after their registration date.


-- ##########################################################################
-- Question : Q20
-- ##########################################################################
-- Q20. Create a conversion chart for monthly registration. Show the following columns:
-- year
-- month
-- registered_count
-- no_sale
-- three_days – the number of customers who made a purchase within 3 days from registration.
-- first_week – the number of customers who made a purchase during the first week but not within the first three days.
-- after_first_week – the number of customers who made a purchase after the 7th day.


-- ##########################################################################
-- Question : Q21
-- ##########################################################################
-- Q21. Find the number of active customers in each country. Show two columns: country and active_customers (number of those who have placed an order within the last 30 days). Do you see any major differences between countries?


-- ##########################################################################
-- Question : Q22
-- ##########################################################################
-- Q22. Find the number of active customers in quarterly registration basis. Active customers are customers who've made a purchase in the last 14 days. Show three columns: year, quarter, and active_customers. Order the rows by year and quarter.


-- ##########################################################################
-- Question : Q23
-- ##########################################################################
-- Q23. Find each country's average order value per customer. Show two columns: country and avg_order_value. Sort the results by average order value, in ascending order.


-- ##########################################################################
-- Question : Q24
-- ##########################################################################
-- Q24. Find out the average number of orders placed in the last 180 days by customers who have been active (made a purchase) in the last 30 days. Name the column


-- ##########################################################################
-- Question : Q25
-- ##########################################################################
-- Q25. The average order value per customer in France is 1564.853 . Now, for each French customer with an average order value above that, show the following columns: customer_id, full_name, and avg_order_value. Order the results by average order value, in descending order.


-- ##########################################################################
-- Question : Q26
-- ##########################################################################
-- Q26. Out of customers registered in 2017, find the number of churned customers. Define a churned customer as one who hasn't placed an order in more than 60 days. Show the count in a column named churned_customers.


-- ##########################################################################
-- Question : Q27
-- ##########################################################################
-- Q27. Find the number of churned customers in monthly registration basis from 2017. In this exercise, churned customers are those who haven't placed an order in more than 45 days. Show the following columns: month and churned_customers. Order the results by month.


-- ##########################################################################
-- Question : Q28
-- ##########################################################################
-- Q28. Find the number of churned customers in weekly signup from 2017. In this exercise, churned customers are those who haven't placed an order in 30 days. Show the following columns: week and churned_customers. Order the results by week.


-- ##########################################################################
-- Question : Q29
-- ##########################################################################
-- Q29. Create a customer retention chart based on monthly signup for all years. It should have the following columns:
-- year
-- month
-- percent_active_14d (the percentage of customers still active after 14 days).
-- percent_active_30d (the percentage of customers still active after 30 days).
-- Order the results by year and month.


-- ##########################################################################
-- Question : Q30
-- ##########################################################################
-- Q30. Find the number of "good customers" in weekly signup from the first quarter of 2017. Define a good customer as one whose average total order amount was above $1450.00. Show the following columns:
-- year – the year of registration.
-- week – the week of registration.
-- percent_of_good_customers – the percent of good customers.
-- Order the results by year and week.