

----Employees with departmens and their ratings

select e.emp_id,e.emp_name,d.dept_id,d.dept_name,p.rating_2022,p.rating_2023,p.rating_2024
FROM
cleaned_employees e
JOIN
cleaned_departments d
ON e.dept_id=d.dept_id
JOIN
cleaned_performance p
ON e.emp_id=p.emp_id;

-----Complete profile of each employee

select e.emp_id,e.emp_name,d.dept_id,d.dept_name,s.salary,p.rating_2022,p.rating_2023,p.rating_2024
FROM
cleaned_employees e
left JOIN
cleaned_departments d
ON e.dept_id=d.dept_id
LEFT JOIN 
cleaned_performance p
ON e.emp_id=p.emp_id
LEFT JOIN
cleaned_salaries s
ON e.emp_id=s.emp_id;

-----how many salary records does each employee had

SELECT e.emp_id,e.emp_name,count(s.salary_date) AS Total_Salary_record
FROM
cleaned_employees e
LEFT  JOIN
cleaned_salaries s
on e.emp_id=s.emp_id
GROUP BY e.emp_id,e.emp_name
ORDER BY e.emp_id;

----Total Salary paid to each employee

SELECT e.emp_id,e.emp_name,sum(s.salary) AS Total_Salary_Paid
FROM
cleaned_employees e
LEFT  JOIN
cleaned_salaries s
on e.emp_id=s.emp_id
GROUP BY e.emp_id,e.emp_name
ORDER BY e.emp_id;
    