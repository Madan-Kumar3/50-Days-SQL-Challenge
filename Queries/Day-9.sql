select * from cleaned_employees;
select * from cleaned_departments;

----Employees who have valid departments

select emp_id,emp_name,dept_name
from 
cleaned_employees e
INNER JOIN
cleaned_departments d
on e.dept_id=d.dept_id
order by 1;

----All employees even without departments

select emp_id,emp_name,dept_name
from 
cleaned_employees e
left JOIN
cleaned_departments d
on e.dept_id=d.dept_id
order by 1;


----Employees without departments

select e.emp_id,e.emp_name,d.dept_name
from 
cleaned_employees e
left JOIN
cleaned_departments d
on e.dept_id=d.dept_id
where dept_name is NULL
order by 1; 


----Employees and thier salaries

select e.emp_id,e.emp_name,s.salary
from 
cleaned_employees e
inner JOIN
cleaned_salaries s
on e.emp_id=s.emp_id
ORDER BY 1;

----Employees whose salary is null

select e.emp_id,e.emp_name,s.salary
from 
cleaned_employees e
left JOIN
cleaned_salaries s
on e.emp_id=s.emp_id
where s.salary is NULL
ORDER BY 1;

