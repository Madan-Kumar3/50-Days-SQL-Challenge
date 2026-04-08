----Peformance rating of each employee

SELECT e.emp_id,e.emp_name,p.rating_2022,p.rating_2023,p.rating_2024
from 
cleaned_employees e
inner JOIN
cleaned_performance p
on e.emp_id=p.emp_id
order by 1;

----Employees do not have salary records

SELECT e.emp_id,e.emp_name,s.salary
from 
cleaned_employees e
left JOIN
cleaned_salaries s
on e.emp_id=s.emp_id
where s.emp_id is NULL
order by 1;


----Employees do not have attendance records


SELECT e.emp_id,e.emp_name,a.attendance_id,a.attendance_date
from
cleaned_employees e
left JOIN
cleaned_attendance a
on e.emp_id=a.emp_id
where a.attendance_id is NULL
order by 1;


----Employees Name,Department Name and their Salary

SELECT e.emp_id,e.emp_name,d.dept_name,s.salary
FROM
cleaned_employees e
INNER JOIN
cleaned_departments d
ON e.dept_id=d.dept_id
INNER JOIN
cleaned_salaries s
ON e.emp_id=s.emp_id
ORDER BY 1;
