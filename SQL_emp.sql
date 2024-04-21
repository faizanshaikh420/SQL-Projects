use  etl1;

create table emp12(id int, fname varchar(20), lname varchar(20), salary int, gender varchar(20));

insert into emp12

values(1,'Bhanu','Pratap',75,'M'),
(2,'Priya','Anand',80,'F'),
(3,'Savendra','Singh',85,'M'),
(4,'Riya','Gupta',90,'F'),
(5,'Komal','Joshi',80,'F'),
(6,'Supriya','Deshmukh',87,'F'),
(7,'Abhi','Sing',77,'M'),
(8,'Bhavesh','Sharma',66,'M'),
(9,'Tanu','Chauhan',85,'F'),
(10,'Om','Prakash',70,'M');

select * from emp12;

-- show salary of all employees

select salary from emp12;

 -- show the fnames and salaries of all employees
 
 select fname,salary from emp12;
 
  -- show the fnames having salary greater than 75
  
  select fname,salary from emp12 where salary>75;
  
  -- show the fname,lname of employees which are female
  
  select fname,lname from emp12 where gender='f';
  
  -- show the details of employees which are male and 

select * from emp12 where gender='M';

-- show the details of id 1,3,5,6,8

select * from emp12 where id in (1,3,5,6,8);

--  show the details of employees having salary from 60 to 80

select * from  emp12 where salary between 60 and 80;

-- show the details of abhi and komal.

select * from emp12 where fname in('abhi','komal');

-- show the details of all employees except tanu.

select * from emp12 where fname!='Tanu';

-- add details of danish prasad earning 85 at id 11

insert into emp12

values(11,'Danish','Prasad',85,'M');

select * from emp12;

--  add kamal sharma to table without salary,gender & id

insert into emp12(fname,lname)
values('Kamal','sharma');
select * from emp12;

-- show the details of employees having 'i' in their fname.

select * from emp12 where fname like '%i%';

-- show the details of employees having 'a' at 2nd position of their fname

select * from emp12 where fname like '_a%';

-- show the details of employees having 'a' at third last position of their lname

select * from emp12 where lname like '%a__';

-- delete the details of id 3 and 5.

delete from emp12 where id in (3,5);
select * from emp12;

--  add column location

alter table emp12 add column location varchar(20);

select * from emp12;

-- # change the salary of id 1 and 8 to 97.

update emp12 set salary=97 where id in (1,8);
select * from emp12;

-- insert the values of location of females to 'vashi' 

update emp12 set location='Vashi' where gender='f';
select * from emp12;

--  remove the column location

alter table emp12 drop column location;
select * from emp12;








