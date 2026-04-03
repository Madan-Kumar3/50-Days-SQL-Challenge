----Invalid Age

select * from cleaned_employees
where age<'18' and age>'65'

----Invalid Salary

select * from cleaned_salaries
where salary<'0'

---Invalid Rating

select * from cleaned_performance
where rating_2022<'0' and rating_2022>'5'

select * from cleaned_performance
where rating_2023<'0' and rating_2023>'5'

select * from cleaned_performance
where rating_2024<'0' and rating_2024>'5'


---Fix Invalid Ages

update cleaned_employees
set age=
CASE 
    WHEN emp_id='20' THEN  '32'
    WHEN emp_id='24' THEN  '28'
    WHEN emp_id='44' THEN  '35'
    WHEN emp_id='65' THEN  '40'
    WHEN emp_id='66' THEN  '30'
    WHEN emp_id='67' THEN  '27'
    WHEN emp_id='110' THEN  '38'
    WHEN emp_id='134' THEN  '29'
    WHEN emp_id='147' THEN  '33'
    WHEN emp_id='188' THEN  '36'
    WHEN emp_id='216' THEN  '31'
    WHEN emp_id='223' THEN  '26'
    WHEN emp_id='266' THEN  '42'
    WHEN emp_id='295' THEN  '34'
    WHEN emp_id='318' THEN  '28'
    WHEN emp_id='347' THEN  '27'
    WHEN emp_id='360' THEN  '39'
    WHEN emp_id='387' THEN  '25'
    WHEN emp_id='420' THEN  '31'
    WHEN emp_id='428' THEN  '33'
    WHEN emp_id='440' THEN  '29'
    WHEN emp_id='460' THEN  '36'
    WHEN emp_id='466' THEN  '27'
    WHEN emp_id='469' THEN  '32'
    WHEN emp_id='471' THEN  '25'
    ELSE  age
END
where age is null or age =''

select * from cleaned_employees

--------Fix Invalid Salaries

update cleaned_salaries
set salary=
CASE 
    
    WHEN emp_id='463' THEN '55000'     
    WHEN emp_id='142' THEN '60000'
    WHEN emp_id='100' THEN '45000'
    WHEN emp_id='30' THEN '70000'
    WHEN emp_id='54' THEN '52000'
    WHEN emp_id='310' THEN '48000'
    WHEN emp_id='183' THEN '51000'
    WHEN emp_id='168' THEN '47000'
    WHEN emp_id='126' THEN '46000'
    WHEN emp_id='206' THEN '58000'
    WHEN emp_id='76' THEN '49000'
    WHEN emp_id='433' THEN '62000'
    WHEN emp_id='43' THEN '53000'
    WHEN emp_id='324' THEN '55000'
    WHEN emp_id='226' THEN '51000'
    WHEN emp_id='113' THEN '50000'
    WHEN emp_id='273' THEN '52000'
    WHEN emp_id='200' THEN '48000'
    WHEN emp_id='160' THEN '47000'
    WHEN emp_id='42' THEN '46000'
    WHEN emp_id='150' THEN '49000'
    WHEN emp_id='45' THEN '53000'
    WHEN emp_id='65' THEN '54000'
    WHEN emp_id='488' THEN '60000'
    WHEN emp_id='8' THEN '45000'
    WHEN emp_id='121' THEN '50000'
    WHEN emp_id='78' THEN '47000'
    WHEN emp_id='94' THEN '46000'
    WHEN emp_id='353' THEN '52000'

    ELSE  salary
END
where salary<'1'


select * from cleaned_salaries
where salary<'1'
