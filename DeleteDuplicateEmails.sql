create database delete_duplicate_emails;
use delete_duplicate_emails;

create table Person (
	id int,
    email varchar(100),
    primary key (id)
);

insert into Person values
(1, "john@example.com"),
(2, "bob@example.com"),
(3, "john@example.com");

-- SOLUTION 1: Using select
select min(id) as id, email 
from Person
group by email;

-- SOLUTION 2: using delete
set SQL_SAFE_UPDATES = 0;

delete p1
from Person p1, Person p2
where p1.email = p2.email and p1.id > p2.id;

set SQL_SAFE_UPDATES = 1;


