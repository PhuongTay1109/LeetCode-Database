create database combine_two_tables;
use combine_two_tables;

create table Person(
	personId int,
    lastName varchar(100),
    firstName varchar(100),
    primary key(personId)
);

insert into Person values
(1, "Wang", "Allen"),
(2, "Alice", "Bob");

create table Address (
	addressId int,
    personId int,
    city varchar(100),
    state varchar(100),
    primary key (addressId)
);

insert into Address values
(1, 2, "New York City", "New York"),
(2, 3, "Leetcode", "California");

-- SOLUTION 1
select firstName, lastName, city, state
from Person p
left join Address a
on p.personId = a.personId;

-- SOLUTION 2
select firstName, lastName, city, state
from Person
left join Address
using (personId);