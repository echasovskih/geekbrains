begin;
insert into sample.users (name) select name from example.users where id = 1;
commit;
