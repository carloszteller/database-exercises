\W
use employees;

select concat(emp_no, ' - ', first_name, ' ', last_name) as full_name, birth_date as DOB from employees limit 10;