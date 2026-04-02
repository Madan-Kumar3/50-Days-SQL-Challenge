---Employees



with cte as(
            select *,
            ROW_NUMBER()OVER (PARTITION BY emp_id,emp_name,city order by emp_id) as Row      
            from cleaned_employees
            )
 delete from cleaned_employees
 where emp_id in(
                select emp_id 
                from cte
                where row=2
                )
               
select * from cleaned_employees


------Salaries

with cte as(
            select *,ROW_NUMBER() over ( PARTITION BY salary_id,emp_id,salary,salary_date order by salary_id) as row 
            from cleaned_salaries
            )
delete from cleaned_salaries
where salary_id in(
                    select salary_id 
                    from cte
                    where row=2     
                    )

select * from cleaned_salaries

--------Performance Table

with cte as(
            select *,ROW_NUMBER() over ( PARTITION BY emp_id,rating_2022,rating_2023,rating_2024 order by emp_id) as row 
            from cleaned_performance
            )
delete from cleaned_performance
where emp_id in(
                    select emp_id 
                    from cte
                    where row=2     
                    )

select * from cleaned_performance


------Task 2

---city

select DISTINCT city
from cleaned_employees


select DISTINCT dept_name
from cleaned_departments

select * from cleaned_employees

update cleaned_employees
set city=concat(upper(left(trim(city),1)),lower(substring(trim(city),2)))

select DISTINCT city from cleaned_employees

update cleaned_employees
set city=
        CASE 
            WHEN city in ('Dlhi','New delhi','Delhi ncr') THEN  'Delhi'
            WHEN  city in ('Hydbd') THEN 'Hyderabad'
            WHEN city in ('Bangalore') THEN 'Bengaluru'
            else city
        END


select DISTINCT dept_name from cleaned_departments


