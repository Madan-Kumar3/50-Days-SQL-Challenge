
----List employees earning more than average salary


select e.emp_id,e.emp_name,s.salary from 
cleaned_employees e
JOIN
cleaned_salaries s
on e.emp_id=s.emp_id
where s.salary>(
            select avg(salary)
            from cleaned_salaries
            )
ORDER BY e.emp_id;

----List employees with salary equal to maximum salary

select e.emp_id,e.emp_name,s.salary from 
cleaned_employees e
JOIN
cleaned_salaries s
on e.emp_id=s.emp_id
where s.salary=(
            select max(salary)
            from cleaned_salaries
            )
ORDER BY e.emp_id;

----List employees earning less than average

select e.emp_id,e.emp_name,s.salary from 
cleaned_employees e
JOIN
cleaned_salaries s
on e.emp_id=s.emp_id
where s.salary<(
            select avg(salary)
            from cleaned_salaries
            )
ORDER BY e.emp_id;


----List employees with minimum salary

select e.emp_id,e.emp_name,s.salary from 
cleaned_employees e
JOIN
cleaned_salaries s
on e.emp_id=s.emp_id
where s.salary=(
            select min(salary)
            from cleaned_salaries
            )
ORDER BY e.emp_id;  