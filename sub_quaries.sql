USE employees;

# Find all the employees with the same hire date as employee 101010 using a sub-query.
# Find all the titles held by all employees with the first name Aamod.

select *
from department
where employees
and emp_no
 from hire_date
where to_date > 101010()
);

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
