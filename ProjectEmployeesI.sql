drop database solution;
create database solution;
use solution;

CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    name VARCHAR(255),
    experience_years INT NOT NULL
);

INSERT INTO Employee (employee_id, name, experience_years) VALUES
(1, 'Khaled', 3),
(2, 'Ali', 2),
(3, 'John', 1),
(4, 'Doe', 2);

CREATE TABLE Project (
    project_id INT,
    employee_id INT,
    PRIMARY KEY (project_id, employee_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

INSERT INTO Project (project_id, employee_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 4);

-- Write an SQL query that reports the average experience years 
-- of all the employees for each project, rounded to 2 digits.
select project_id, round(avg(experience_years), 2) as average_years
from Project left join Employee using (employee_id)
group by project_id;
