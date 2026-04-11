

----Average Salary of each department


SELECT d.dept_id,d.dept_name,AVG(s.salary) as SalaryDeptWise
FROM
cleaned_employees e
JOIN
cleaned_departments d
ON e.dept_id=d.dept_id
JOIN
cleaned_salaries s
on e.emp_id=s.emp_id
GROUP BY d.dept_id,dept_name
ORDER BY 1;

----How many days does each employee present

SELECT e.emp_id,e.emp_name,count(a.status)
FROM
cleaned_employees e
JOIN
cleaned_attendance a
on e.emp_id=a.emp_id
where a.status='Present'
group by e.emp_id,e.emp_name
order by 1;


----Which employees belong to the same department?

SELECT d.dept_id,d.dept_name,string_agg(e.emp_name,',')
FROM
cleaned_employees e
JOIN
cleaned_departments d 
on e.dept_id=d.dept_id
GROUP BY d.dept_id,d.dept_name
order by d.dept_id,d.dept_name;

----Which employee has more than one salary records

SELECT e.emp_id,e.emp_name,count(s.salary_id)
FROM
cleaned_employees e
JOIN
cleaned_salaries s 
on e.emp_id=s.emp_id
GROUP BY e.emp_id,e.emp_name
HAVING count(s.salary_id)>1
order by 1; 