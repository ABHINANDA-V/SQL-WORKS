use office;

select e.emp_name,d.department_name from employee e inner join department d on e.dep_id = d.dep_id;
select d.department_name,e.emp_name from department d left join employee e on d.dep_id=e.dep_id;
select e.emp_name,d.department_name from employee e right join department d on e.dep_id=d.dep_id;
select e.emp_name,d.department_name from employee e left join department d on e.dep_id=d.dep_id union select e.emp_name,d.department_name from employee e right join department d on e.dep_id=d.dep_id;
select emp_name,salary from employee where salary > (select avg(salary) as average from employee);
select emp_name,salary from employee where salary = (select max(salary) as maxsalary from employee);
select emp_name,department_name from (select e.emp_name,d.department_name from employee e inner join department d on e.dep_id = d.dep_id) as emp_dept where department_name="HR" or department_name in('IT','HR');