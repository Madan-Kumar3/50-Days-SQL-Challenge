

------Departments Table
select * from cleaned_departments
where 
dept_name is null
OR
dept_name=''
OR
dept_id is NULL
OR
dept_id=''


-----Employees Table
select * from cleaned_employees
where 
emp_name is null
OR
emp_name=''
OR
emp_id is NULL
OR
emp_id=''
OR
city=''
or
city is NULL
OR
dept_id is NULL
OR
dept_id=''
or
hire_date is NULL
or 
hire_date =''
or
age=''
OR
age is NULL


-------Attendance Table

SELECT * from cleaned_attendance
WHERE
attendance_id is NULL
or
attendance_id =''
or 
emp_id is NULL
or
emp_id=''
OR
attendance_date is NULL
OR
attendance_date =''
OR
status is NULL
or 
status =''

--------Salaries Table

SELECT * from cleaned_salaries
WHERE
salary_id is NULL
OR
salary_id=''
OR
emp_id is NULL
or
emp_id=''
OR
salary is NULL
OR  
salary =''
OR
salary_date is NULL
OR
salary_date=''


--------Performance Table

SELECT * from  cleaned_performance
WHERE
rating_2022 is NULL
OR
rating_2022=''
OR
emp_id is NULL
or
emp_id=''
OR
rating_2023 is NULL
OR  
rating_2023 =''
OR
rating_2024 is NULL
OR  
rating_2024 =''