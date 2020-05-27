drop database if exists user_template_db;
create database user_template_db;
use user_template_db;

  create table User (
ID                     int                           primary key auto_increment,
UserName               varchar   (20)                not null,
CONSTRAINT uname UNIQUE(ID,UserName),
Password               varchar   (20)                not null,
FirstName              varchar   (20)                not null,
LastName               varchar   (20)                not null,
Phone                  varchar   (12)                not null,
Email                  varchar   (75)                not null,
is_member               tinyint   (1)                 not null,
admin                  tinyint   (1)                 not null           
);

-- CREATE USER user_template_db_user@localhost IDENTIFIED BY 'user_template';
-- GRANT SELECT, ALTER, REFERENCES, INSERT, DELETE, UPDATE ON user_template_db.* TO user_template_db_user@localhost;