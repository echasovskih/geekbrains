alter table users add column created_at_new datetime;
alter table users add column updated_at_new datetime;
update users set created_at_new = str_to_date(created_at, '%d.%m.%Y %h:%i'), 
		updated_at_new = str_to_date(updated_at, '%d.%m.%Y %h:%i');
alter table users drop column created_at;
alter table users drop column updated_at;
alter table users change `created_at_new` `created_at` datetime;
alter table users change `updated_at_new` `updated_at` datetime;
