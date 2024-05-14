use products;

insert into activities values 
("2020-05-30", "Headphone"),
("2020-06-01", "Pencil"),
("2020-06-02", "Mask"),
("2020-05-30", "Basketball"),
("2020-06-01", "Bible"),
("2020-06-02", "Mask"),
("2020-05-30", "T-Shirt");

-- The GROUP_CONCAT() function in MySQL is used to concatenate data from multiple rows into one field
SELECT sell_date, 
       COUNT(DISTINCT product) AS num_sold,
       GROUP_CONCAT(DISTINCT product ORDER BY product) AS products
FROM activities 
GROUP BY sell_date
ORDER BY sell_date;

