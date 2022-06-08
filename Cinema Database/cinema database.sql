create database cinema;

use cinema;

create table movie (
movie_id int auto_increment primary key,
movie_title varchar(50) not null,
movie_year int,
movie_time int
);

desc movie;

insert into movie (movie_title, movie_year, movie_time)
values ('Forrest Gump', 1994, 194), ('Bohemian Rapsody', 2018, 205), ('Titanic', 1997, 190), ('Friday the 13th', 1980, 176), ('Psycho', 1960, 187), ('King Kong', 1993, 160), ('Jurassic Park', 1993, 140), ('The Matrix', 1999, 180), ('Avatar', 2009, 153), ('Avengers', 2018, 169); 

insert into movie (movie_title, movie_year, movie_time)
values ('Appolo 13', 1995, 194), ('Sleepless In Seattle', 1995, 205), ('The Terminal', 1997, 190), ('The Wolf of Wall Street', 2013, 176), ('Catch Me If You Can', 2002, 187); 


select * from movie;

create table lead_actor (
actor_id int auto_increment primary key,
first_name varchar(50),
last_name varchar(50),
movie_id int not null,
foreign key (actor_id) references movie(movie_id)
);

desc lead_actor;

insert into lead_actor (first_name, last_name, movie_id)
values ('Tom', 'Hanks', 1), ('Rami', 'Malek', 2), ('Leonardo', 'DiCaprio', 3), ('Kevin', 'Bacon', 4), ('Anthony', 'Perkins', 5), ('Fay', 'Wray', 6),
('Richard', 'Attenborough', 7), ('Keanu', 'Reeves', 8), ('Sam', 'Worthington', 9), ('Robert', 'Downey Jr.', 10);

insert into lead_actor (first_name, last_name, movie_id)
values ('Tom', 'Hanks', 11), ('Tom', 'Hanks', 12), ('Tom', 'Hanks', 13), ('Leonardo', 'DiCaprio', 14), ('Leonardo', 'DiCaprio', 15); 

select * from lead_actor; 

create table movie_gender (
movie_ref_id int,
gender_type varchar(50),
foreign key (movie_ref_id) references movie(movie_id)
);

desc movie_gender;

insert into movie_gender (movie_ref_id, gender_type)
values (1, 'Drama'), (2, 'Drama'), (3, 'Drama'), (11, 'Drama'), (13, 'Drama'), (4, 'Horror'), (5, 'Horror'), (6, 'Adventure'), (7, 'Adventure'), (14, 'Adventure'), (15, 'Adventure'), 
(8, 'SciFi'), (9, 'SciFi'), (10, 'SciFi'), (12, 'Romantic');

select * from movie_gender;

alter table movie_gender
rename to movie_genres;

alter table movie_genres 
rename column gender_type to genres_type;


create table screening (
screening_day date,
start_time time,
movie_time int,
movie_title varchar(50)
);

insert into screening (screening_day, start_time, movie_time, movie_title)
values ('2022-07-25', '11:00:00', 205, 'Bohemian Rapsody'), ('2022-07-25', '14:00:00', 140, 'Jurassic Park'), ('2022-07-25', '17:00:00', 176, 'Friday the 13th'),
('2022-07-25', '20:00:00', 180, 'The Matrix'), ('2022-07-26', '12:00:00', 205, 'Sleepless In Seattle'), ('2022-07-26', '15:00:00', 169, 'Avengers'), 
 ('2022-07-26', '18:00:00', 190, 'The Terminal'), ('2022-07-27', '11:00:00', 160, 'King Kong'), ('2022-07-27', '14:00:00', 205, 'Jurassic Park'), ('2022-07-27', '17:00:00', 176, 'Friday the 13th'),
 ('2022-07-27', '17:00:00', 153, 'Avatar');
 
alter table screening
add screening_id int not null;
 
update screening
set screening_id = 2 where movie_title = 'Bohemian Rapsody';

update screening
set screening_id = 3 where movie_time = 176;

update screening
set screening_id = 8 where movie_time = 180;

update screening
set screening_id = 12 where movie_title = 'Sleepless In Seattle';

update screening
set screening_id = 10 where movie_time = 169;

update screening
set screening_id = 13 where movie_time = 190;

update screening
set screening_id = 6 where movie_time = 160;

update screening
set screening_id = 7 where movie_title = 'Jurassic Park';

update screening
set screening_id = 4 where movie_title = 'Friday the 13th';

update screening
set screening_id = 9 where movie_time = 153;

alter table screening
add foreign key (screening_id) references movie(movie_id);

select * from movie;
select * from movie_genres;
select * from lead_actor;
select * from screening;

desc movie;
desc movie_genres;
desc lead_actor;
desc screening;



-- task_1: Find all movies that appeared after 2000 and have over 3 hours
select * from movie where movie_year > '2000' and movie_time > '180';


-- task_2: Find the name of the movie with the highest time
select movie_title from movie
where movie_time = (select max(movie_time) from movie); 


-- task_3: Find the name of the movie that is the oldest one in terms of appearance year
select movie_title from movie order by movie_year asc limit 1;


-- task_4: Find all movie names and their year in which Tom Hanks played
select movie_title, movie_year from movie 
left join lead_actor on movie.movie_id = lead_actor.actor_id 
where lead_actor.first_name = 'Tom' and lead_actor.last_name = 'Hanks';


-- task_5: Get the genre of the movies in which Leonardo DiCaprio played 
select genres_type
from movie_genres left join lead_actor on movie_genres.movie_ref_id = lead_actor.actor_id 
where lead_actor.first_name = 'Leonardo' and lead_actor.last_name = 'DiCaprio';

-- task_6: Show all distinct movie genres
select * from movie_genres
group by genres_type;

-- task_7: Get all movies which have a screening record in the cinema
select movie_title from screening;


-- task_8: Get all movies names that are screened on 26-27 july
select movie_title from screening
where screening_day = '2022-07-26' or screening_day = '2022-07-27';

-- task_9: Compute how many movies are being screened on 25th of july
select count(*) from screening
where screening_day = '2022-07-25';





select * from movie;
select * from movie_genres;
select * from lead_actor;
select * from screening;

 