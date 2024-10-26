create database edudb;
create user 'jdbctest'@'%' identified by 'jdbctest';
grant all on edudb.* to 'jdbctest'@'%';
flush privileges;
