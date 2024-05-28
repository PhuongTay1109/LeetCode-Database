create database solution;
use solution;

create table Activity (
	machine_id int,
    process_id int,
    activity_type enum ('start', 'end'),
    timestamp float,
    primary key (machine_id, process_id, activity_type)
);

INSERT INTO Activity VALUES 
(0, 0, 'start', 0.712),
(0, 0, 'end', 1.520),
(0, 1, 'start', 3.140),
(0, 1, 'end', 4.120),
(1, 0, 'start', 0.550),
(1, 0, 'end', 1.550),
(1, 1, 'start', 0.430),
(1, 1, 'end', 1.420),
(2, 0, 'start', 4.100),
(2, 0, 'end', 4.512),
(2, 1, 'start', 2.500),
(2, 1, 'end', 5.000);

select a.machine_id, round(avg(b.timestamp - a.timestamp), 3) as processing_time 
from activity a join activity b
on a.machine_id = b.machine_id 
	and a.process_id = b.process_id 
	and a.activity_type = 'start' and b.activity_type = 'end'
group by a.machine_id;


