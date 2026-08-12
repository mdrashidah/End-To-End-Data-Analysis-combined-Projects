USE walmart_db;
select * from walmart;

-- q1. Determine the number of transactions, total transactions and total quantity sold for each payment method
select payment_method, count(payment_method) as number_of_transactions, sum(Total_Price_based_on_total_quantity_sold) as total_transactions_amount, sum(quantity) as total_quantity_sold from walmart
group by payment_method;

-- q2) Identify the category with the highest average rating in each branch
SELECT branch, category, avg_rating
FROM (
    SELECT branch, category,
AVG(rating) AS avg_rating,
RANK() OVER(PARTITION BY branch ORDER BY AVG(rating) DESC) AS ranked
FROM walmart
GROUP BY branch, category
) AS ranked
WHERE ranked = 1;

-- q3) Determine the busiest day of the week for every branch based on transaction volume ?
select branch, days, transaction_volume from(
select branch, days, count(*) as transaction_volume,
rank() over(partition by branch order by days desc) as ranked
from walmart
group by branch
) as ranked
where ranked = 1;

-- q4) Calculate the total quantity of items sold per payment method ? 
select payment_method, sum(quantity) from walmart
group by payment_method
order by quantity asc;

-- q5) Determine the minimum, maximum, and average product category rating for each city ?
select city,category, avg(rating) as avg_rating, min(rating) as min_rating, max(rating) as max_rating from walmart
group by city, category
order by city;

-- q6) Calculate the total profit and total revenue for each product category ?
select category, sum(Total_Price_based_on_total_quantity_sold) as total_revenue_$, sum(Profit_earned) as total_profit_$ from walmart
group by category
order by Profit_earned desc;

-- q7) Find the most common payment method used by customers at each branch ?
select branch, most_preffered_payment_mtd, total_transaction 
from(
select branch, 
payment_method as most_preffered_payment_mtd, 
COUNT(*) AS total_transaction,
rank() over( partition by branch ORDER BY COUNT(*) DESC) as ranked
from walmart
group by branch, payment_method
)as ranked
where ranked = 1;

-- q8) Categorize sales into morning, afternoon & evening to find the busiest shift based on no. of invoices in every shift? 
select branch ,
case
when hour(time) < 12 then 'morning'
when hour(time) between 12 and 16 then 'afternoon'
else 'evening'
end as busiest_shift,
COUNT(*) AS num_of_invoices
from walmart
GROUP BY branch, busiest_shift
order by branch, num_of_invoices;

