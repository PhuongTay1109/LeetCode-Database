drop database solution;
create database solution;
use solution;

create table Orders(
	order_number int,
    customer_number int,
    primary key (order_number)
);

insert into Orders values
(1, 1),
(2, 2),
(3, 3),
(4, 3);

-- Write a solution to find the customer_number 
-- for the customer who has placed the largest number of orders.
select customer_number
from Orders
group by customer_number
order by count(order_number) desc -- or count(*) 
limit 1;


