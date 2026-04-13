----List employees with salary records (at least once)


select e.emp_id,e.emp_name
from 
cleaned_employees e
where  EXISTS (select 1 
            from cleaned_salaries s
            where e.emp_id=s.emp_id)
order by 1;

----List employees without salary records

select e.emp_id,e.emp_name
from 
cleaned_employees e
where not  EXISTS (select 1
            from cleaned_salaries s
            where e.emp_id=s.emp_id)
order by 1;


----List employees with attendance records

select e.emp_id,e.emp_name
from 
cleaned_employees e
where  EXISTS (select 1
            from cleaned_attendance a
            where e.emp_id=a.emp_id)
order by 1; 


----List employees without attendance records

select e.emp_id,e.emp_name
from 
cleaned_employees e
where NOT EXISTS (select 1 
            from cleaned_attendance a
            where e.emp_id=a.emp_id)
order by 1; 