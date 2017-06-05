USE employees;


select *
from employees
where emp_no = 101010;

select * from employees where hire_date = '1990-10-22'



select last_name
from employees
where emp_no in (
  select emp_no
  from departments
  where last_name = 'Aamod'
);



select *
from departments
where dept_no in (
  select dept_no from dept_manager
   where emp_no in(
     select emp_no from employees where gender ='F'
   )
);

select *
from employees
where gender = 'F'
      and emp_no in (
  select emp_no
  from dept_manager
  where to_date > now()
);

