use customer_churn;

SELECT *
FROM customer_churn
LIMIT 10;

-- Q1) How many customers are there in each Geography?

select geography,count(*) As Customer_count
from customer_churn
group by geography;

select * from customer_churn;

-- Q2) What is the average Credit Score for customers in each Geography?
select geography,
       avg(credit_score) As Average_credit_score
from customer_churn
group by geography;


-- Q3) What is the average Balance of customers in each Geography?
select geography,
       avg(balance) As Average_Balance
from customer_churn
group by geography;


-- Q4) How many customers belong to each Card Type?
select card_type,
count(*) as Customer_count
from customer_churn
group by card_type;

-- Q5) What is the average Estimated Salary for each Gender?
select gender,
       avg(estimated_salary)
from customer_churn
group by gender;


-- Q6: Churn rate for each Card Type?
select card_type,
       count(*) as Total_Customers,
	   sum(exited) as churned_customers,
       Round(sum(exited) * 100.0/ count(*),2) As churn_rate
from customer_churn
group by card_type;
       
       
-- Q7) What is the churn rate for each Gender?
select gender,
       count(*) as Total_Customers,
       sum(exited) as Churned_customers,
       Round(sum(exited) * 100.0 / count(*),2) As Churn_rate
from customer_churn
group by gender;


-- Q8)Average Balance of churned customers for each Geography?
select geography,
       Avg(balance) As Average_balance
       from customer_churn
       where exited = 1
group by geography;


-- Q9) Which Geography + Card Type combination has the highest number of churned customers?
select geography,
       card_type,
       count(*) As Churned_customers
       from customer_churn
       where exited = 1
       group by geography,card_type
       order by churned_customers desc;
       
       
-- 10) Find the Geographies where the average Balance is greater than 100,000?
select geography,
       avg(balance) as Avg_balance
       from customer_churn
       group by geography
       Having avg(balance) > 100000;
       

-- Q11) Find the Card Types where the average Credit Score is greater than 650?
select card_type,
       avg(credit_score) As Average_credit_score
       from customer_churn
       group by card_type
       Having avg(credit_score) > 650;
       

-- Q12) How do churned customers differ from customers who stayed with the bank 
-- in terms of Age, Credit Score, Balance, and Estimated Salary?
SELECT
    Exited,
    COUNT(*) AS Total_Customers,
    ROUND(AVG(Age), 2) AS Average_Age,
    ROUND(AVG(credit_score), 2) AS Average_Credit_Score,
    ROUND(AVG(Balance), 2) AS Average_Balance,
    ROUND(AVG(estimated_salary), 2) AS Average_Salary
FROM customer_churn
GROUP BY Exited;


-- Q13) How many high-value customers have churned?
select 
      count(*) As High_value_customer_churned
      from customer_churn
where balance >100000
And exited = 1;

-- Q14)What is the churn rate for customers based on the number of products they have?
SELECT
    num_of_products,
    COUNT(*) AS Total_Customers,
    SUM(Exited) AS Churned_Customers,
    ROUND(SUM(Exited) * 100.0 / COUNT(*), 2) AS Churn_Rate
FROM customer_churn
GROUP BY num_of_products
ORDER BY num_of_products;


-- Q15) Compare the churn rate of Active vs Inactive customers within each Geography?
select geography,
       is_active_member,
       count(*) as Total_customers,
       sum(exited) as Customer_churned,
       Round(sum(exited) * 100.0 /count(*),2) As churn_rate
       from customer_churn
group by geography, is_active_member
order by geography, is_active_member;


