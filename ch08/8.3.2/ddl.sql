create database book_ex default character set utf8;

create user 'zerock'@'localhost' identified by 'zerock';
grant all privileges on book_ex.* to 'zerock'@'localhost';

create user 'zerock'@'%' identified by 'zerock';
grant all privileges on book_ex.* to 'zerock'@'%';
