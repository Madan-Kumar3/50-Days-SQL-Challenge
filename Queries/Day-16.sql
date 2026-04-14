----Calculate total salary paid to each employee
SELECT e.emp_id,e.emp_name,sum(s.salary) TotalSalary
from 
cleaned_employees e
join
cleaned_salaries s
on e.emp_id=s.emp_id
GROUP BY 1,2
ORDER BY 1;


----Calculate average salary of each employee

SELECT e.emp_id,e.emp_name,round(avg(s.salary)) AvgSalary
from 
cleaned_employees e
join
cleaned_salaries s
on e.emp_id=s.emp_id
GROUP BY 1,2
ORDER BY 1;

----Count number of salary records for each employee

SELECT e.emp_id,e.emp_name,count(s.salary_id) TotalSalaryRecords
from 
cleaned_employees e
join
cleaned_salaries s
on e.emp_id=s.emp_id
GROUP BY 1,2
ORDER BY 1;

------Find maximum salary received by each employee

SELECT e.emp_id,e.emp_name,max(s.salary) MaxSalary
from 
cleaned_employees e
join
cleaned_salaries s
on e.emp_id=s.emp_id
GROUP BY 1,2
ORDER BY 1;