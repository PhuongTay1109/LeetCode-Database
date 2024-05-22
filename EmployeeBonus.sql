create database employee_bonus;
use employee_bonus;

create table Employee (
	empId int,
    name varchar(100),
    supervisor int,
    salary int,
    primary key (empId),
    foreign key (supervisor) references Employee (empId)
);

insert into Employee values
(3, "Brad", null, 4000),
(1, "John", 3, 1000),
(2, "Dan", 3, 2000),
(4, "Thomas", 3, 4000);

create table Bonus (
	empId int,
    bonus int,
    primary key (empId),
    foreign key (empId) references Employee (empId)
);

insert into Bonus values
(2, 500),
(4, 2000);

select e.name, b.bonus
from Employee e
left join Bonus b on e.empId = b.empId
where b.bonus is null or b.bonus < 1000;