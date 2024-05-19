create database employees_earning_more_than_their_managers;
use employees_earning_more_than_their_managers;

create table Employee(
	id int,
    name varchar(100),
    salary int,
    managerId int,
    primary key (id)
);
insert into Employee values
(1, "Joe", 70000, 3),
(2, "Henry", 80000, 4),
(3, "Sam", 60000, null),
(4, "Max", 90000, null);

-- SOLUTION 1
SELECT e.name AS Employee
FROM Employee e
LEFT JOIN Employee m ON e.managerId = m.id
WHERE e.salary > m.salary ;

-- SOLUTION 2
SELECT name AS Employee
FROM Employee e
WHERE salary > (SELECT salary FROM Employee WHERE id = e.managerId);
