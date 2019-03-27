

--1_
SELECT DEPARTMENT_ID
FROM DEPARTMENTS_OLD
MINUS
SELECT DEPARTMENT_ID
FROM EMPLOYEES_OLD
WHERE JOB_ID <> 'ST_CLERK';


SELECT *
FROM COUNTRIES_OLD;
--2)
SELECT COUNTRY_ID,COUNTRY_NAME
FROM COUNTRIES_OLD
where COUNTRY_ID in
               (SELECT country_id
               from countries_old
               minus 
               select country_id
               from locations_old);
               
               
 select country_id,
 country_name
 from countries_old
 minus
 select l.country_id,
 c.country_name
 from locations_old l
 join countries_old c
 on l.country_id=c.country_id
 join departments_old d
 on d.location_id=l.location_id;
               
--3)

select employee_id,
job_id,
department_id
from employees_old
where department_id in
               (select department_id
               from employees_old
              -- where department_id in (50,80)
               union all
               select department_id
               from  departments_old)
               --where department_id in (50,80)
and department_id in (50,80);
               
               

select employee_id,
job_id,
department_id
from employees_old
where department_id =50
union all
select employee_id,
job_id,
department_id
from employees_old
where department_id =80;


--4)
select *
from jobs;

select employee_id
from employees_old
where job_id='SA_REP'
intersect
select employee_id
from employees_old
where department_id=80;


--5)
select last_name,
department_id,
to_char(null) department_name
from employees 
union all
select to_char(null),
department_id, 
department_name
from departments;