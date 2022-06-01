create database library;
use library;
create table librarian(lid int not null primary key auto_increment,
name varchar(100),password varchar(100),mobile int);

create table bookstore(bookId int not null primary key auto_increment
,bName varchar(100),bAuthor varchar(100),quantity int,added_date date,
lid int,foreign key(lid) references librarian(lid),issued int not null default 0);

create table studentdetails(Stdid int not null primary key,stdName 
varchar(100),StdContact bigint,issu_date date,bookId int,
foreign key(bookId) references bookstore(bookId));