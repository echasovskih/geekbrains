create database mediacatalog;
use mediacatalog;
create table if not exists users ( id int auto_increment, user_name text not null, primary key (id)) engine=innodb;
create table if not exists keywords ( id int auto_increment, keyword text not null, primary key (id)) engine=innodb;
create table if not exists files ( id int auto_increment, file_name text not null, file_path text not null, file_description text, user_id int not null, primary key (id), foreign key (user_id) references users(id)) engine=innodb;
create table if not exists file_keyword (id int auto_increment, file_id int not null, keyword_id int not null, primary key (id), foreign key (file_id) references files(id), foreign key (keyword_id) references keywords(id)) engine=innodb;
