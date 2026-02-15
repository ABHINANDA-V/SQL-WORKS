use office;
insert into employee(emp_name,salary,dep_id,join_date)values("Anargha",30000,3,'2019-09-04');
insert into employee(emp_name,salary,dep_id,join_date)values("Anjali",50000,2,'2019-07-04');
insert into employee(emp_name,salary,dep_id,join_date)values("Aradhya",80000,1,'2018-09-09');
update employee set emp_name="Manju" where emp_id=103;
select * from employee;
select emp_name,salary from employee;
