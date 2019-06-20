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
insert into users (name, score) values ('okipo', 6.8);
insert into users (name, score) values ('myq', 4.1);
insert into users (name, score) values ('sorafa', 19.7);
insert into users (name, score) values ('aka', null);

drop table if exists users_with_team;
create table users_with_team as
select
  id,
  name,
  score,
  case 
    when score > 8.0 then 'Team-A'
    when score > 6.0 then 'Team-B'
    else 'Team-C'
  end as team
from
  users;

-- select * from users_with_team;

-- select sum(score), team from users_with_team group by team;
-- select sum(score), team from users_with_team group by team desc;
select sum(score), team from users_with_team group by team desc having sum(score) > 10.0;
