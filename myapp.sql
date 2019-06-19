drop table if exists users;
create table users(
  id int unsigned primary key auto_increment,
  name varchar(20) unique,
  score float default 0.0,
  rank enum('gold', 'silver', 'bronze')
);

desc users;

-- insert into users (id, name, score) values
--   (1, 'okipo', 5.8),
--   (2, 'myq', 4.1),
--   (3, 'sorafa', 9.7),
--   (4, 'aka', null);
-- 
insert into users (name, score, rank) values ('okipo', 5.8, 'gold');
insert into users (name, score, rank) values ('myq', 4.1, 'bronze');
insert into users (name, score, rank) values ('sorafa', 9.7, 'silver');
insert into users (name, score, rank) values ('aka', null, 'blue');

-- select * from users;
select * from users where rank = 2;
