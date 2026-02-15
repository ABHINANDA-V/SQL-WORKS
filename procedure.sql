use office;
create procedure lg_sal()
select * from employee where salary >5000;
call lg_sal()

delimiter //
create procedure large_salary5()
begin
	select * from employee where salary =50000;
    select * from employee where emp_name like 'A%';
end //
delimiter ;

call large_salary5();

create view new_view as select emp_name,salary from employee where salary < 60000;
select * from new_view;
update new_view set salary=100 where emp_name like 'M%';
select * from new_view;
drop view new_view;

