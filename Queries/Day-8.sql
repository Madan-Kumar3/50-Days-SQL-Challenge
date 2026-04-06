select * from cleaned_employees

update cleaned_employees
set emp_name=trim(emp_name);

-----Data Type Conversion

----cleaned_Employees

alter table cleaned_employees
alter emp_id type  integer
using emp_id::INTEGER;

ALTER TABLE cleaned_employees
alter COLUMN age type INTEGER using (age::INTEGER),
alter COLUMN dept_id type INTEGER using (dept_id::INTEGER);

SELECT * from cleaned_employees;

-----Cleaned Departments

SELECT * from cleaned_departments;
update cleaned_departments
set dept_id= trim(dept_id);

ALTER TABLE cleaned_departments 
ALTER COLUMN dept_id TYPE INTEGER 
USING (CASE WHEN dept_id ~ '^[0-9]+$' THEN dept_id::INTEGER ELSE NULL END);

-----Cleaned_performance

select * from cleaned_performance;

ALTER Table cleaned_performance
alter COLUMN emp_id type INTEGER using (emp_id::INTEGER),
alter COLUMN rating_2022 type INTEGER using (rating_2022::INTEGER),
alter COLUMN rating_2023 type INTEGER using (rating_2023::INTEGER),
alter COLUMN rating_2024 type INTEGER using (rating_2024::INTEGER);


----Cleaned_salaries

select * from cleaned_salaries;

alter Table cleaned_salaries
alter COLUMN salary_id type integer using (salary_id::INTEGER),
alter COLUMN emp_id type integer using (emp_id::INTEGER);
alter Table cleaned_salaries
alter COLUMN salary_date type date using (salary_date::date);

-----Cleaned_attendance

select * from cleaned_attendance;

alter Table cleaned_attendance
alter COLUMN attendance_id type integer using (attendance_id::INTEGER),
alter COLUMN emp_id type integer using (emp_id::INTEGER);

alter Table cleaned_attendance
alter COLUMN attendance_date type DATE 
using attendance_date::DATE;