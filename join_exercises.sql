use employees;

select d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as 'Department Manager'
from employees as e
join dept_manager as dm
    on e.emp_no = dm.emp_no
join departments as d
    on dm.dept_no = d.dept_no
where dm.to_date like '9999%'
order by d.dept_name;

select d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as 'Manager Name'
from employees as e
join dept_manager as dm
    on e.emp_no = dm.emp_no
join departments as d
    on dm.dept_no = d.dept_no
where dm.to_date like '9999%' and e.gender = 'F'
order by d.dept_name;

select t.title as 'Title', count(*) as 'Count'
from dept_emp as de
join titles as t
    on t.emp_no = de.emp_no
join departments as d
    on d.dept_no = de.dept_no
where de.to_date like '9999%' and t.to_date like '9999%' and d.dept_name = 'Customer Service'
group by t.title;

select d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as 'Name', s.salary as 'Salary'
from employees as e
join dept_manager as dm
    on e.emp_no = dm.emp_no
join departments as d
    on dm.dept_no = d.dept_no
join salaries as s
    on e.emp_no = s.emp_no
where dm.to_date like '9999%' and s.to_date like '9999%'
order by d.dept_name;

select concat(e.first_name, ' ', e.last_name) as 'Employee Name', d.dept_name as 'Department Name', concat(m.first_name, ' ', m.last_name) as 'Manager Name'
from employees as e
join dept_emp as de
     on e.emp_no = de.emp_no
join departments as d
    on de.dept_no = d.dept_no
join
    (select e2.first_name, e2.last_name, dm.dept_no
    from employees as e2
    join dept_manager as dm
        on e2.emp_no = dm.emp_no
    where dm.to_date like '9999%') as m
    on d.dept_no = m.dept_no
where de.to_date like '9999%'
order by d.dept_name;