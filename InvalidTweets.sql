create database invalid_tweets;
use invalid_tweets;

create table Tweets (
	tweet_id int,
    content varchar(100),
    primary key (tweet_id)
);

insert into Tweets values 
(1, "Vote for Biden"),
(2, "Let us make America great again!");

-- LENGTH() returns the length of the string measured in bytes.
-- CHAR_LENGTH() returns the length of the string measured in characters.
select tweet_id
from Tweets
where char_length(content) > 15;