create database example;
use examples;
create table if not exists users ( id int auto_increment, name text, primary key (id)) engine=innodb;
