create database duplicate_emails;
use duplicate_emails;

create table Person(
	id int,
    email varchar(100) not null,
    primary key (id)
);

insert into Person values
(1, "a@b.com"),
(2, "c@d.com"),
(3, "a@b.com");

-- The GROUP BY statement groups rows 
-- that have the same values into summary rows
select email as Email
from Person
group by email
having count(email) > 1;