--create a database
create database mytestdb;

--change to the working db
use mytestdb;

--create table in the newly created database
create table mytesttable
(RollNo int,
FirstName varchar(50),
LastName varchar(50)
);

--insert value to the table
insert into mytesttable(RollNo,FirstName,LastName)
values(1,'Jon','Doe');

--retrieve data from the table
select RollNo, FirstName, LastName from mytesttable;
