use employees;

select concat(e.first_name, ' ', e.last_name) as 'Employee Name', e.hire_date as 'Hire Date'
from employees as e
where e.hire_date in
    (select hire_date
    from employees where emp_no = 101010)
order by e.last_name;

select concat(e.first_name, ' ', e.last_name) as 'Employee Name', t.title
from employees as e
join
    (select t.emp_no, t.title
    from titles as t) t
    on e.emp_no = t.emp_no
where e.first_name = 'Aamod';

select e.first_name, e.last_name
from employees as e
where e.emp_no in
    (select dm.emp_no
    from dept_manager as dm
    where dm.to_date like '9999%')
  and e.gender = 'F';

select d.dept_name
from departments as d
where d.dept_no in
    (select dm.dept_no
    from employees as e
    join dept_manager dm
        on e.emp_no = dm.emp_no
    where dm.to_date like '9999%' and e.gender = 'F')
order by d.dept_name;

select e.first_name, e.last_name
from employees as e
where e.emp_no in
    (select s.emp_no
    from salaries as s
    where s.salary in
        (select max(s2.salary)
        from salaries as s2));