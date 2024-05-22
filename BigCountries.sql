create database big_countries;
use big_countries;

create table World (
	name varchar(100),
    continent varchar(100),
    area int,
    population int,
    gdp bigint,
    primary key(name)
);

insert into World values
('Afghanistan', 'Asia', 652230, 25500100, 20343000000),
('Albania', 'Europe', 28748, 2831741, 12960000000),
('Algeria', 'Africa', 2381741, 37100000, 188681000000),
('Andorra', 'Europe', 468, 78115, 3712000000),
('Angola', 'Africa', 1246700, 20609294, 100990000000);

select name, population, area
from World
where area >= 3000000 or population >= 25000000;
