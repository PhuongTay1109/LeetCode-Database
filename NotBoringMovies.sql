drop database solution;
create database solution;
use solution;

CREATE TABLE Cinema (
    id INT PRIMARY KEY,
    movie VARCHAR(255),
    description VARCHAR(255),
    rating FLOAT
);

INSERT INTO Cinema (id, movie, description, rating) VALUES
(1, 'War', 'great 3D', 8.9),
(2, 'Science', 'fiction', 8.5),
(3, 'irish', 'boring', 6.2),
(4, 'Ice song', 'Fantacy', 8.6),
(5, 'House card', 'Interesting', 9.1);

-- Write a solution to report the movies with an odd-numbered ID 
-- and a description that is not "boring".
-- Return the result table ordered by rating in descending order.
select *
from Cinema
where id % 2 != 0 and description not like "boring"
order by rating desc;
