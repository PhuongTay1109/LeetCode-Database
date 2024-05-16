create database triangle;
use triangle;
create table triangle(
	x int,
    y int,
    z int,
    primary key (x, y, z)
);
insert into triangle values
(13, 15, 30),
(10, 20, 15);

-- IF(condition, true_value, false_value)
select x,y,z, 
	if(x+y>z and y+z>x and x+z>y, 'Yes', 'No') as triangle 
from triangle