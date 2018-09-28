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
