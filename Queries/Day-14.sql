----List employees earning more than the department average salary.



SELECT e1.emp_id,e1.emp_name,e1.dept_id,s1.salary
from
cleaned_employees e1
join
cleaned_salaries s1
on e1.emp_id=s1.emp_id
where s1.salary>
                (SELECT avg(s.salary) as DeptAvgSal
                from
                cleaned_salaries s
                JOIN
                cleaned_employees e
                on
                s.emp_id=e.emp_id
                where e.dept_id=e1.dept_id)
                ORDER BY e1.emp_id;

---List employees whose salary is equal to the highest salary in their department.

SELECT e1.emp_id,e1.emp_name,e1.dept_id,s1.salary
from
cleaned_employees e1
join
cleaned_salaries s1
on e1.emp_id=s1.emp_id
where s1.salary=
                (SELECT max(s.salary) as DeptMaxSal
                from
                cleaned_salaries s
                JOIN
                cleaned_employees e
                on
                s.emp_id=e.emp_id
                where e.dept_id=e1.dept_id)
                ORDER BY e1.emp_id;


----List all employees whose salary is equal to the lowest salary in their department.

SELECT e1.emp_id,e1.emp_name,e1.dept_id,s1.salary
from
cleaned_employees e1
join
cleaned_salaries s1
on e1.emp_id=s1.emp_id
where s1.salary=
                (SELECT min(s.salary) as DeptMinSal
                from
                cleaned_salaries s
                JOIN
                cleaned_employees e
                on
                s.emp_id=e.emp_id
                where e.dept_id=e1.dept_id)
                ORDER BY e1.emp_id;