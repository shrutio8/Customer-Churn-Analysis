create database churn_analysis;

use churn_analysis;

select * from customer 
limit 10;

select count(*)
from customer;

select churn, count(*) as total
from customer 
group by churn;

select contract, count(*) as total_customers,
sum(case 
when churn="yes" then 1
else 0
end) as churned_customers
from customer
group by contract;

select churn, avg(monthlycharges) as avg_monthly_charges
from customer
group by churn;





