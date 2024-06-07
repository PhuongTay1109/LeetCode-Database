drop database solution;
create database solution;
use solution;

CREATE TABLE Salary (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    sex ENUM('m', 'f'),
    salary INT
);

INSERT INTO Salary (id, name, sex, salary) VALUES
(1, 'A', 'm', 2500),
(2, 'B', 'f', 1500),
(3, 'C', 'm', 5500),
(4, 'D', 'f', 500);

SET SQL_SAFE_UPDATES = 0;

-- Write a solution to swap all 'f' and 'm' values 
-- (i.e., change all 'f' values to 'm' and vice versa)
--  with a single update statement and 
-- no intermediate temporary tables.
update Salary
set sex = (if(sex='m', 'f', 'm'));

select * from Salary;


