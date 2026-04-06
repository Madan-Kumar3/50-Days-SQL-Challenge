select * from cleaned_employees
where hire_date is NULL


alter table cleaned_employees1 RENAME to cleaned_employees

----Remove Invalid Month

select hire_date from cleaned_employees

select *
from cleaned_employees
where hire_date is NULL


update cleaned_employees
set hire_date = NULL
where CAST(NULLIF(split_part(hire_date, '-', 2), '') AS INTEGER) > 12;



----Step 2 Change Format to YYYY-MM-DD

select hire_date, 
concat(
right(hire_date,4),'-',
substr(hire_date,4,2),'-',
left(hire_date,2)
    ) New_Hire_Date
from cleaned_employees
where hire_date is not null

update cleaned_employees
set hire_date=concat(
right(hire_date,4),'-',
substr(hire_date,4,2),'-',
left(hire_date,2)
    )   
where hire_date is not null

select * from cleaned_employees
where hire_date is null

-----Step 3 Remove Invalid Days

select CAST(NULLIF(split_part(hire_date, '-', 3), '') AS INTEGER) from cleaned_employees;

select * from cleaned_employees
WHERE
CAST(NULLIF(split_part(hire_date, '-', 3), '') AS INTEGER)>31;

alter table cleaned_employees
alter COLUMN hire_date type DATE
using hire_date::DATE;


-----Cleaned Salaries


----Invalid Month


SELECT *,split_part(salary_date,'-',2)
from cleaned_salaries
where split_part(salary_date,'-',2)>'12';
SELECT * from cleaned_salaries;

update cleaned_salaries
set salary_date=NULL
where split_part(salary_date,'-',2)>'12';


----Step 2 Change Format to YYYY-MM-DD


SELECT concat( split_part(salary_date,'-',3),'-',
split_part(salary_date,'-',2),'-',
split_part(salary_date,'-',1))
from cleaned_salaries

UPDATE cleaned_salaries
set salary_date=concat( split_part(salary_date,'-',3),'-',
                split_part(salary_date,'-',2),'-',
                split_part(salary_date,'-',1))
where salary_date is not null

select * from cleaned_salaries;

-----Cleaned Attendance



SELECT *,split_part(attendance_date,'-',2)
from cleaned_attendance
where split_part(attendance_date,'-',2)>'12';

UPDATE cleaned_attendance
set attendance_date=concat( split_part(attendance_date,'-',3),'-',
                split_part(attendance_date,'-',2),'-',
                split_part(attendance_date,'-',1));

select * from cleaned_attendance