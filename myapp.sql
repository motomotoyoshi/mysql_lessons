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
insert into users (name, score) values ('okipo', 6.8);
insert into users (name, score) values ('myq', 4.1);
insert into users (name, score) values ('sorafa', 39.7);
insert into users (name, score) values ('aka', null);

start transaction;
update users set score = score - 30.0 where name = 'sorafa';
update users set score = score + 30.0 where name = 'okipo';
-- commit;
rollback;

select * from users;
