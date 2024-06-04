drop database solution;
create database solution;
use solution;

create table MyNumbers(
	num int
);

insert into MyNumbers values
(8), (8), (3), (3), (1), (4), (5), (6);

-- A single number is a number that appeared only once 
-- in the MyNumbers table.
-- Find the largest single number. 
-- If there is no single number, report null.
SELECT COALESCE(
    (SELECT num
     FROM MyNumbers 
     GROUP BY num
     HAVING COUNT(num) <= 1
     ORDER BY num DESC
     LIMIT 1), 
    NULL) AS num;
-- or can use IFNULL instead of COALESCE