SELECT FIRST_NAME,
       LAST_NAME,
       SALARY*12
FROM EMPLOYEES;


SELECT FIRST_NAME || q'['s last name]' || LAST_NAME
FROM EMPLOYEES; 

SELECT DISTINCT *
FROM AD_EXAM_DETAILS;


SELECT EMPLOYEE_ID,
      LAST_NAME,
      JOB_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID=90;

SELECT *
FROM EMPLOYEES
WHERE LAST_NAME= 'King';



select distinct first_name
from EMPLOYEES;


SELECT *
FROM EMPLOYEES
where HIRE_DATE='17-06-11';




SELECT LAST_NAME,
      SALARY
FROM EMPLOYEES
WHERE SALARY !=9000;



SELECT LAST_NAME,
       FIRST_NAME,
       SALARY
FROM EMPLOYEES
WHERE SALARY BETWEEN 2000 AND 6500;


SELECT *
FROM EMPLOYEES
WHERE HIRE_DATE BETWEEN '02-JUL-11' AND '18-AUG-12';

SELECT *
FROM EMPLOYEES
WHERE MANAGER_ID IN (100,102,105);


SELECT*
FROM EMPLOYEES
WHERE LAST_NAME IN ('Kochhar', 'Hunold', 'De Haan');


SELECt*
FROM employees
WHERE first_name like 'E%';


SELECt*
FROM employees
WHERE first_name like '%e';


Select *
From employees
Where first_name like '_e%';

SELECT*
FROM employees
Where last_name like '%r';

SELECT*
From employees
WHERE job_id like '%Cler';


Select*
From employees
Where commission_pct is not null;



Select *
From employees
Where salary >=10000
and job_id like'%MAN0';


Select *
From employees
Where salary >=10000
and commission_pct is not null;


Select *
From employees
Where salary >=10000
or commission_pct is not null;

Select *
From employees
Where salary >=10000
or job_id like'%MAN'
or commission_pct is not null;





Select last_name,
       department_id,
       salary
From employees
Where department_id=60
or   department_id=80
and salary>10000;



select *
from employees
where job_id ='SA_REP'
or job_id='SA_MAN'
and phone_number like '%5%';





select *
from employees
where (job_id ='SA_REP'
or job_id='SA_MAN')
and phone_number like '%5%';


select *
from employees
where job_id ='SA_REP'
or job_id='SA_MAN'
and phone_number like '%5%'
order by salary ASc;






select last_name || first_name as "FullName"
from employees
order by last_name ASc;


select last_name || first_name as "FullName",
     salary as salariu
from employees
order by 1 desc,2 desc;



Select *
From employees
order by employee_id desc
fetch first 5 rows only;



Select *
From employees
order by employee_id
offset 14 rows
fetch first 5 rows only;




Select *
From employees
order by employee_id
offset 1 rows
fetch first 1 rows with ties;




Select *
From employees
order by salary
--offset 1 rows
fetch first 18 rows with ties;





Select *
From employees
order by salary
offset 1 row
fetch next 18 rows with ties;


Select employee_id,
      last_name,
      salary,
      department_id
from employees
where employee_id =&employee;
