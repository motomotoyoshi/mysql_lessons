drop table if exists users;
create table users(
  id int unsigned primary key auto_increment,
  name varchar(20) unique,
  -- score float not null
  score float default 0.0
);
desc users;

-- insert into users (id, name, score) values (1, 'okipo', 5.8);
-- insert into users (id, name, score) values (2, 'myq', 4.1);
-- insert into users (id, name, score) values (3, 'sorafa', 9.7);
-- insert into users (id, name, score) values (4, 'aka', null);

-- insert into users (id, name, score) values
--   (1, 'okipo', 5.8),
--   (2, 'myq', 4.1),
--   (3, 'sorafa', 9.7);
--   -- (4, 'aka', null);
-- 
-- insert into users (id, name) values (5, 'aipon');
-- insert into users (id, name) values (6, 'aipon');

insert into users (name, score) values ('okipo', 5.8);
insert into users (name, score) values ('myq', 4.1);
insert into users (name, score) values ('sorafa', 9.7);
insert into users (name, score) values ('aka', 3.3);

select * from users;
