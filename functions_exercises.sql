\W
use employees;

select concat(first_name, ' ', last_name) from employees where last_name like 'E%' and last_name like '%E' order by emp_no;

select concat(first_name, ' ', last_name, ': ', datediff(now(), hire_date), ' days') from employees where hire_date like '199%' and birth_date like '%12-25' order by birth_date, hire_date desc;