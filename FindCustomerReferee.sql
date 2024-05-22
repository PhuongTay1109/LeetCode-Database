create database find_customer_referee;
use find_customer_referee;

create table Customer (
	id int,
    name varchar(100),
    referee_id int,
    primary key (id)
);

insert into Customer values
(1, "Will", null),
(2, "Jane", null),
(3, "Alex", 2),
(4, "Bill", null),
(5, "Zack", 1),
(6, "Mark", 2);

select name
from Customer
where referee_id <> 2 or referee_id is null;