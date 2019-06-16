drop table if exists users;
create table users(
  id int unsigned,
  name varchar(20),
  score float
);

-- insert into users (id, name, score) values (1, 'okipo', 5.8);
-- insert into users (id, name, score) values (2, 'myq', 4.1);
-- insert into users (id, name, score) values (3, 'sorafa', 9.7);
-- insert into users (id, name, score) values (4, 'aka', null);

insert into users (id, name, score) values
  (1, 'okipo', 5.8),
  (2, 'myq', 4.1),
  (3, 'sorafa', 9.7),
  (4, 'aka', null);

select * from users;
