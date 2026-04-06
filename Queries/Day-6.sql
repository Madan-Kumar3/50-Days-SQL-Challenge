select * from cleaned_salaries


ALTER TABLE cleaned_salaries 
ALTER COLUMN salary TYPE INTEGER 
USING (CASE WHEN salary ~ '^[0-9]+$' THEN salary::INTEGER ELSE NULL END);


select * from salaries
where salary is NULL or salary=''

SELECT 
min(salary) as min_sal,
max(salary) as max_sal,
round(avg(salary),2) as avg_sal
from cleaned_salaries
where salary>0;

------client rule for max salary is 2 lakhs and min salary is 20 thousand


alter table cleaned_salaries
ADD COLUMN is_outlier int;

select * from cleaned_salaries;

update cleaned_salaries
set is_outlier=
CASE 
    WHEN salary<20000 or salary>200000 THEN 1    else 0
END;

update cleaned_salaries
set salary=
CASE 
    WHEN emp_id='35' THEN 65000
    WHEN emp_id='262' THEN 97000
    ELSE  salary
END;

select * from cleaned_salaries 
where is_outlier=1;



select * from cleaned_employees
where emp_id='97'



