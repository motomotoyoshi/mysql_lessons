drop table if exists users;
create table users(
  id int unsigned primary key auto_increment,
  name varchar(20) unique,
  score float default 0.0
);

desc users;

-- insert into users (id, name, score) values
--   (1, 'okipo', 5.8),
--   (2, 'myq', 4.1),
--   (3, 'sorafa', 9.7),
--   (4, 'aka', null);
-- 
insert into users (name, score) values ('okipo', 5.8);
insert into users (name, score) values ('myq', 4.1);
insert into users (name, score) values ('sorafa', 9.7);
insert into users (name, score) values ('aka', null);
insert into users (name, score) values ('aipon', 8.0);
insert into users (name, score) values ('imo', 1.1);
insert into users (name, score) values ('seto', 7.1);

-- update users set score = score * 1.2 where id % 2 = 0;

-- select round(6.122);
-- select round(6.122, 1);
-- select floor(6.122);
-- select ceil(6.122);
-- select rand();

select * from users order by rand() limit 3;
select * from users;
