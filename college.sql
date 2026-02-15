select version(),current_date();
select now();
select user();
create database college;
use college;
create table student(rollnum int primary key auto_increment,stud_name varchar(25),place varchar(50),dob date);
describe student;
insert into student(rollnum,stud_name,place,dob)values(1,'Anargha','Palazhi','2013-08-23');
insert into student(stud_name,place,dob)values('Athira','Kakkodi','2018-07-12');
insert into Student(stud_name,place,dob)values('Aarohi','Palazhi','2000-09-08');
insert into Student(stud_name,place,dob)values('Ameya','Paymbra','2009-09-08');
insert into Student(stud_name,place,dob)values('Arun','Pala','2000-09-12');
insert into Student(stud_name,place,dob)values('Aarav','Palazhi','2000-05-08');
insert into Student(stud_name,place,dob)values('Amal','Palazhi','2003-09-08');
select * from student;
select * from student where rollnum=4;
select stud_name,place from student; 
insert into student(stud_name,place,dob)values('Alaka','Parambil','2001-09-02');
select * from student where stud_name='Athira' and place='Kakkodi';
select * from student where stud_name='Alaka' or place='Parambil';
select * from student;
alter table student add mark float;
update student set mark=23 where rollnum=1;
update student set mark=90 where rollnum=2;
update student set mark=98 where rollnum=3;
update student set mark=95 where rollnum=4;
update student set mark=45 where rollnum=5;
update student set mark=100 where rollnum=6;
update student set mark=25 where rollnum=7;
update student set mark=37 where rollnum=8;
select * from student;
select * from student where mark >= 70;
select stud_name from student where mark=100;
show databases;
use college;
rename table student to students;
alter table students add age int after place;
select * from students;
alter table students add age int first;
alter table students drop age;
rename table students to student;

use college;
create table staff(id int primary key auto_increment,staff_name varchar(20),department varchar(20));
insert into staff(id,staff_name,department)values(1,'Vimala','Physics');
insert into staff(staff_name,department)values('Aleena','Chemistry');
insert into staff(staff_name,department)values('Anil','Malayalam');
select * from staff;
delete from staff;
select * from staff;
drop table staff;

use college;
update student set place='Malabar' where stud_name='Aleena';
alter table student change place  stud_place varchar(45);




