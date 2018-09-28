SELECT first_name || ' ' || last_name,
       department_id,
       phone_number,
       salary
From EMPLOYEES
Where job_id = 'ST_CLERK'
AND phone_number like '%4'
AND department_id=50;



Select *
From DEPARTMENTS;


Select*
From EMPLOYEES;

Select*
From LOCATIONS;


Select first_name,
       last_name,
       salary,
       'IT' as department_name      
From EMPLOYEES
Where department_id = 60
AND SALARY BETWEEN 4000 and 10000;
       