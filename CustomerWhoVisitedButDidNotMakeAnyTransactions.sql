create database solution;
use solution;

create table Visits (
	visit_id int,
    customer_id int,
    primary key (visit_id)
);

create table Transactions (
	transaction_id int,
    visit_id int,
    amount int,
    primary key (transaction_id)
);

INSERT INTO Visits VALUES 
(1, 23),
(2, 9),
(4, 30),
(5, 54),
(6, 96),
(7, 54),
(8, 54);

INSERT INTO Transactions VALUES 
(2, 5, 310),
(3, 5, 300),
(9, 5, 200),
(12, 1, 910),
(13, 2, 970);

-- Count the number of rows that satisfy 
-- the transaction_id IS NULL condition for each customer_id.
select customer_id, count(*) as count_no_trans
from Visits left join Transactions using (visit_id)
where transaction_id is null
group by customer_id;

