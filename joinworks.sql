create database joinworks;
use joinworks;
create table department(dept_id int primary key auto_increment,dept_name varchar(50));
create table employee(emp_id int primary key auto_increment,emp_name varchar(50),dept_id int,foreign key(dept_id)references department(dept_id),salary int);
insert into department(dept_id,dept_name)values(10,"HR");
insert into department(dept_name)values("IT");
insert into department(dept_name)values("FINANCE");
insert into department(dept_name)values("Manager");
insert into employee(emp_id,emp_name,dept_id,salary)values(1,"Arun",10,30000);
insert into employee(emp_name,dept_id,salary)values("Beena",12,45000);
insert into employee(emp_name,dept_id,salary)values("Charu",11,50000);
insert into employee(emp_name,dept_id,salary)values("Deepa",13,28000);
insert into employee(emp_name,dept_id,salary)values("Reena",10,28000);
insert into employee(emp_name,dept_id,salary)values("Manju",13,18000);
select * from employee;
truncate table employee;
select e.emp_name,d.dept_name from employee e inner join department d on e.dept_id=d.dept_id;
select e.emp_name,d.dept_name from employee e left join department d on e.dept_id=d.dept_id;
select e.emp_name,d.dept_name from employee e right join department d on e.dept_id=d.dept_id;
select d.dept_name,e.emp_name from employee e inner join department d on e.dept_id=d.dept_id;

select e.emp_name,d.dept_name from employee e left join department d on e.dept_id=d.dept_id union select e.emp_name,d.dept_name from employee e right join department d on e.dept_id=d.dept_id;
-- DCL
GRANT SELECT ON employee TO 'root'@'localhost';
REVOKE SELECT ON employee FROM 'root'@'localhost';

start transaction;
savepoint x;
delete from employee where emp_id =2 ;
rollback to savepoint x;
commit;







