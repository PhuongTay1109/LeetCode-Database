drop database solution;
create database solution;
use solution;

create table Courses (
	student varchar(255),
    class varchar(255),
    primary key (student, class)
);

INSERT INTO Courses (student, class) VALUES
('A', 'Math'),
('B', 'English'),
('C', 'Math'),
('D', 'Biology'),
('E', 'Math'),
('F', 'Computer'),
('G', 'Math'),
('H', 'Math'),
('I', 'Math');

-- Write a solution to find all the classes 
-- that have at least five students
select class
from Courses
group by class
having count(student) >= 5;
