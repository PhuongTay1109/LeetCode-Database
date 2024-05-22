create database recyclable_and_low_fat_products;
use recyclable_and_low_fat_products;

create table Products (
	product_id int,
    low_fats enum('Y', 'N'),
    recyclable enum('Y', 'N'),
    primary key (product_id)
);

insert into Products values
(0, 'Y', 'N'),
(1, 'Y', 'Y'),
(2, 'N', 'Y'),
(3, 'Y', 'Y'),
(4, 'N', 'N');

select product_id
from Products
where low_fats = 'Y' and recyclable = 'Y';