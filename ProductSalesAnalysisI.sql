create database product_sales_analysis_I;
use product_sales_analysis_I;

create table Product (
	product_id int,
    product_name varchar(100),
    primary key (product_id)
);

insert into Product values
(100, "Nokia"),
(200, "Apple"),
(300, "Samsung");

create table Sales (
	sale_id int,
    product_id int,
    year int,
    quantity int,
    price int,
    primary key (sale_id, year),
    foreign key (product_id) references Product (product_id)
);

insert into Sales values 
(1, 100, 2008, 10, 5000),
(2, 100, 2009, 12, 5000),
(7, 200, 2011, 15, 900);

select p.product_name, s.year, s.price
from Sales s
left join Product p
using (product_id);