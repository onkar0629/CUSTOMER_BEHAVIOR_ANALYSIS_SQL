-- ##########################################################################
-- CUSTOMER BEHAVIOR ANALYSIS
-- SQL PORTFOLIO PROJECT
--
-- Author   : Onkar Jadhav
-- Database : customer_behavior_analysis
-- Total Questions : 30
-- ##########################################################################

USE customer_behavior_analysis;

-- ##########################################################################
-- Question : Q1
-- ##########################################################################

-- ==========================================================
-- Q1
-- Topic : Customer Registrations (First Six Months of 2017)
-- ==========================================================

/*
Business Scenario
-----------------
How many customers registered in the first six months of 2017?
Name the column registration_count.
*/


-- ##########################################################################
-- Question : Q2
-- ##########################################################################

-- ==========================================================
-- Q2
-- Topic : Current Week Registrations
-- ==========================================================

/*
Business Scenario
-----------------
Show the number of registrations in the current week.
Name the column registrations_current_week.
*/


-- ##########################################################################
-- Question : Q3
-- ##########################################################################

-- ==========================================================
-- Q3
-- Topic : Monthly Registration Counts (2017)
-- ==========================================================

/*
Business Scenario
-----------------
Create a report containing the 2017 monthly registration counts.
Show the registration_month and registration_count columns.
Order the results by month.
*/


-- ##########################################################################
-- Question : Q4
-- ##########################################################################

-- ==========================================================
-- Q4
-- Topic : Monthly Registration Count by Year
-- ==========================================================

/*
Business Scenario
-----------------
Find the registration count for each month in each year.
Show the following columns:
- registration_year
- registration_month
- registration_count

Order the results by year and month.
*/


-- ##########################################################################
-- Question : Q5
-- ##########################################################################

-- ==========================================================
-- Q5
-- Topic : Customer Registrations by Channel
-- ==========================================================

/*
Business Scenario
-----------------
Write an SQL query to find the number of customer registrations
per year for each channel.
*/


-- ##########################################################################
-- Question : Q6
-- ##########################################################################

-- ==========================================================
-- Q6
-- Topic : Organic Search Registrations
-- ==========================================================

/*
Business Scenario
-----------------
Write an SQL query to find the number of customer registrations
per year for Organic Search channel.
*/


-- ##########################################################################
-- Question : Q7
-- ##########################################################################

-- ==========================================================
-- Q7
-- Topic : Weekly Registration Count by Country
-- ==========================================================

/*
Business Scenario
-----------------
Create a report to show the weekly counts of registration in 2017,
based on the customer country.

Show the following columns:
- registration_week
- country
- registration_count

Order the results by week.
*/


-- ##########################################################################
-- Question : Q8
-- ##########################################################################

-- ==========================================================
-- Q8
-- Topic : Customers with Purchase
-- ==========================================================

/*
Business Scenario
-----------------
Among customers registered in 2017, show how many made at least
one purchase (customers_with_purchase) and the number of all
customers registered in 2017 (all_customers).
*/


-- ##########################################################################
-- Question : Q9
-- ##########################################################################

-- ==========================================================
-- Q9
-- Topic : Lifetime Conversion Rate
-- ==========================================================

/*
Business Scenario
-----------------
Find the lifetime conversion rate among customers who registered
in 2017.

Show the result in a column named conversion_rate.
Round the result to four decimal places.
*/


-- ##########################################################################
-- Question : Q10
-- ##########################################################################

-- ==========================================================
-- Q10
-- Topic : Conversion Rate by Channel
-- ==========================================================

/*
Business Scenario
-----------------
Find the conversion rate for each customer channel.

Show:
- channel_name
- conversion_rate

Display the conversion rates as percentages rounded
to two decimal places.
*/


-- ##########################################################################
-- Question : Q11
-- ##########################################################################

-- ==========================================================
-- Q11
-- Topic : Monthly Conversion Rate
-- ==========================================================

/*
Business Scenario
-----------------
Create a report showing conversion rates on a monthly basis.

Display the following columns:
- year
- month
- conversion_rate

Order the results by year and month.
*/


-- ##########################################################################
-- Question : Q12
-- ##########################################################################

-- ==========================================================
-- Q12
-- Topic : Weekly Conversion Rate by Channel
-- ==========================================================

/*
Business Scenario
-----------------
Create a report containing the conversion rates for weekly
registration in each registration channel based on customers
registered in 2017.

Show:
- week
- channel_name
- conversion_rate

Format the conversion rates as percentages rounded
to one decimal place.

Order the results by week and channel name.
*/


-- ##########################################################################
-- Question : Q13
-- ##########################################################################

-- ==========================================================
-- Q13
-- Topic : Registration to First Purchase
-- ==========================================================

/*
Business Scenario
-----------------
Show customers' emails and the interval between their first
purchase and registration date.

Name the column difference.
*/


-- ##########################################################################
-- Question : Q14
-- ##########################################################################

-- ==========================================================
-- Q14
-- Topic : Average Time to First Order by Channel
-- ==========================================================

/*
Business Scenario
-----------------
Find the average time from registration to first order
for each channel.

Show:
- channel_name
- avg_days_to_first_order
*/


-- ##########################################################################
-- Question : Q15
-- ##########################################################################

-- ==========================================================
-- Q15
-- Topic : Quarterly Average Time to First Order
-- ==========================================================

/*
Business Scenario
-----------------
Calculate the average number of days that passed between
registration and first order on a quarterly registration basis.

Show:
- year
- quarter
- avg_days_to_first_order

Order the results by year and quarter.
*/


-- ##########################################################################
-- Question : Q16
-- ##########################################################################

-- ==========================================================
-- Q16
-- Topic : Weekly Average Time to First Order
-- ==========================================================

/*
Business Scenario
-----------------
Create a report of the average time to first order for
weekly registration basis from 2017 in each registration
channel.

Show:
- week
- channel_name
- avg_days_to_first_order

Order the results by week.
*/


-- ##########################################################################
-- Question : Q17
-- ##########################################################################

-- ==========================================================
-- Q17
-- Topic : Customers Who Stopped Ordering
-- ==========================================================

/*
Business Scenario
-----------------
Find all customers who placed their first order within
one month from registration, and their last order within
three months from registration.

Show:
- email
- full_name
- first_order_date
- last_order_date
*/


-- ##########################################################################
-- Question : Q18
-- ##########################################################################

-- ==========================================================
-- Q18
-- Topic : Registration Form Versions
-- ==========================================================

/*
Business Scenario
-----------------
Our e-store has used three versions of the registration form:

'ver1' – introduced when the e-store started.
'ver2' – introduced on Mar 14, 2017.
'ver3' – introduced on Jan 1, 2018.

(Note: The original project document does not contain
the actual SQL question for Q18.)
*/


-- ##########################################################################
-- Question : Q19
-- ##########################################################################

-- ==========================================================
-- Q19
-- Topic : First Order Timing
-- ==========================================================

/*
Business Scenario
-----------------
Show two metrics in two different columns:

- order_on_registration_date
- order_after_registration_date
*/


-- ##########################################################################
-- Question : Q20
-- ##########################################################################

-- ==========================================================
-- Q20
-- Topic : Monthly Conversion Chart
-- ==========================================================

/*
Business Scenario
-----------------
Create a conversion chart for monthly registration.

Show:
- year
- month
- registered_count
- no_sale
- three_days
- first_week
- after_first_week
*/


-- ##########################################################################
-- Question : Q21
-- ##########################################################################

-- ==========================================================
-- Q21
-- Topic : Active Customers by Country
-- ==========================================================

/*
Business Scenario
-----------------
Find the number of active customers in each country.

Show:
- country
- active_customers

Active customers are those who have placed an order
within the last 30 days.
*/


-- ##########################################################################
-- Question : Q22
-- ##########################################################################

-- ==========================================================
-- Q22
-- Topic : Quarterly Active Customers
-- ==========================================================

/*
Business Scenario
-----------------
Find the number of active customers on a quarterly
registration basis.

Active customers are customers who've made a purchase
in the last 14 days.

Show:
- year
- quarter
- active_customers

Order the rows by year and quarter.
*/


-- ##########################################################################
-- Question : Q23
-- ##########################################################################

-- ==========================================================
-- Q23
-- Topic : Average Order Value by Country
-- ==========================================================

/*
Business Scenario
-----------------
Find each country's average order value per customer.

Show:
- country
- avg_order_value

Sort the results in ascending order.
*/


-- ##########################################################################
-- Question : Q24
-- ##########################################################################

-- ==========================================================
-- Q24
-- Topic : Average Orders in Last 180 Days
-- ==========================================================

/*
Business Scenario
-----------------
Find the average number of orders placed in the last
180 days by customers who have been active in the
last 30 days.
*/


-- ##########################################################################
-- Question : Q25
-- ##########################################################################

-- ==========================================================
-- Q25
-- Topic : High Value Customers in France
-- ==========================================================

/*
Business Scenario
-----------------
For each French customer whose average order value
is above 1564.853, show:

- customer_id
- full_name
- avg_order_value

Order the results by average order value in
descending order.
*/


-- ##########################################################################
-- Question : Q26
-- ##########################################################################

-- ==========================================================
-- Q26
-- Topic : Churned Customers (60 Days)
-- ==========================================================

/*
Business Scenario
-----------------
Out of customers registered in 2017, find the number
of churned customers.

A churned customer is one who hasn't placed an order
in more than 60 days.

Name the column churned_customers.
*/


-- ##########################################################################
-- Question : Q27
-- ##########################################################################

-- ==========================================================
-- Q27
-- Topic : Monthly Churn Report
-- ==========================================================

/*
Business Scenario
-----------------
Find the number of churned customers on a monthly
registration basis from 2017.

A churned customer is one who hasn't placed an order
in more than 45 days.

Show:
- month
- churned_customers

Order by month.
*/


-- ##########################################################################
-- Question : Q28
-- ##########################################################################

-- ==========================================================
-- Q28
-- Topic : Weekly Churn Report
-- ==========================================================

/*
Business Scenario
-----------------
Find the number of churned customers on weekly signup
from 2017.

A churned customer is one who hasn't placed an order
in more than 30 days.

Show:
- week
- churned_customers

Order by week.
*/


-- ##########################################################################
-- Question : Q29
-- ##########################################################################

-- ==========================================================
-- Q29
-- Topic : Customer Retention Chart
-- ==========================================================

/*
Business Scenario
-----------------
Create a customer retention chart based on monthly signup
for all years.

Show:
- year
- month
- percent_active_14d
- percent_active_30d

Order by year and month.
*/


-- ##########################################################################
-- Question : Q30
-- ##########################################################################

-- ==========================================================
-- Q30
-- Topic : Good Customers
-- ==========================================================

/*
Business Scenario
-----------------
Find the number of good customers in weekly signup
from the first quarter of 2017.

A good customer is one whose average total order
amount was above $1450.00.

Show:
- year
- week
- percent_of_good_customers

Order by year and week.
*/
