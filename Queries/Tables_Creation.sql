-- Active: 1774886393298@@127.0.0.1@5432@sql_challenge
CREATE TABLE departments(dept_id VARCHAR(40),dept_name VARCHAR(40))

create Table employees( 
    
    emp_id VARCHAR(40),
    emp_name VARCHAR(40),
    age VARCHAR(40),
    city VARCHAR(40),
    dept_id VARCHAR(40),
    hire_date VARCHAR(40));
    
create table attendance (

    attendance_id VARCHAR(40),
    emp_id VARCHAR(40),
    attendance_date VARCHAR(40),
    status VARCHAR(40)
);
    
 CREATE TABLE salaries (

    salary_id VARCHAR(40),
    emp_id VARCHAR(40),
    salary VARCHAR(40),
    salary_date VARCHAR(40)
 );   
    
    
 create TABLE performance(
    emp_id VARCHAR(40),
    rating_2022 VARCHAR(40),
    rating_2023 VARCHAR(40),
    rating_2024 VARCHAR(40)
    
);

create table cleaned_departments
as
 select * from departments;

create table cleaned_employees
as
 select * from employees;

 create table cleaned_attendance
as
 select * from attendance;

 create table cleaned_salaries
as
 select * from salaries;

 create table cleaned_performance
as
 select * from performance;

 