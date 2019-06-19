drop table if exists users;
create table users(
  id int unsigned primary key auto_increment,
  name varchar(20) unique,
  score float default 0.0,
  coins set('gold', 'silver', 'bronze')
);

desc users;

-- insert into users (id, name, score) values
--   (1, 'okipo', 5.8),
--   (2, 'myq', 4.1),
--   (3, 'sorafa', 9.7),
--   (4, 'aka', null);
-- 
insert into users (name, score, coins) values ('okipo', 5.8, 'gold,silver');
insert into users (name, score, coins) values ('myq', 4.1, 'bronze,bronze');
insert into users (name, score, coins) values ('sorafa', 9.7, 'silver,gold');
insert into users (name, score, coins) values ('aka', null, 'blue');

-- select * from users;
-- select * from users where coins = 'gold,silver';
-- select * from users where coins like '%gold%';
select * from users where coins = 3;
