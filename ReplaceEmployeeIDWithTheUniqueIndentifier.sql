use employee;

create table Employees (
	id int,
    name varchar(100),
    PRIMARY KEY(id)
);

insert into Employees values
(1, "Alice"),
(7, "Bob"),
(11, "Meir"),
(90, "Winston"),
(3, "Jonathan");

create table EmployeeUNI (
	id int,
    unique_id int,
    PRIMARY KEY (id, unique_id),
    FOREIGN KEY (id) REFERENCES Employees(id)
);

insert into EmployeeUNI values
(3, 1),
(11, 2),
(90, 3);

# SOLUTION 1
select unique_id, name
from Employees as emp
left join EmployeeUNI as uni
on emp.id = uni.id;

# SOLUTION 2
SELECT unique_id, name 
From Employees 
LEFT JOIN EmployeeUNI USING(id) -- instead of using ON