create database rising_temperature;
use rising_temperature;

create table Weather (
	id int,
    recordDate date,
    temperature int,
    primary key (id)
);

insert into Weather values
(1, "2015-01-01", 10),
(2, "2015-01-02", 25),
(3, "2015-01-03", 20),
(4, "2015-01-04", 30);

-- The DATEDIFF() function returns 
-- the number of days between two date values.
select w1.id 
from Weather w1, Weather w2
where datediff(w1.recordDate, w2.recordDate) = 1 
	  and w1.temperature >  w2.temperature;