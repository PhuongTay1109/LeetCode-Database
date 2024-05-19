create database customers_who_never_order;
use customers_who_never_order;

create table Customers (
	id int,
    name varchar(100),
    primary key (id)
);

insert into Customers values
(1, "Joe"),
(2, "Henry"),
(3, "Sam"), 
(4, "Max");

create table Orders (
	id int,
    customerId int,
    primary key (id),
    foreign key (customerId) references Customers (id)
);

insert into Orders values
(1, 3),
(2, 1);

-- SOLUTION 1
select c.name as Customers
from Customers c
left join Orders o
on c.id = o.customerId
where o.id is null;

-- SOLUTION 2
select name as Customers
from Customers
where id not in (select customerId from Orders);