create table logs (table_name varchar(255), table_field_id int, table_field_name varchar(255), created_at datetime not null default now()) engine = archive;
delimiter $$
create trigger insprod after insert on products
for each row
begin
insert into logs (table_name,table_field_id,table_field_name) values ('products',new.id,new.name);
end $$
create trigger inscat after insert on catalogs
for each row
begin
insert into logs (table_name,table_field_id,table_field_name) values ('catalogs',new.id,new.name);
end $$
create trigger insuser after insert on users
for each row
begin
insert into logs (table_name,table_field_id,table_field_name) values ('users',new.id,new.name);
end $$
delimiter ;
