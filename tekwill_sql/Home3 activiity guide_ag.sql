SELECT  last_name,
      salary
From employees
Where salary > 12000;



SELECT last_name,
     department_id
From EMPLOYEES
WHERE employee_id = 176;




SELECT last_name,
     salary
FROM EMPLOYEES
WHERE salary not between 5000 and 12000;




SELECT last_name,
       job_id,
       hire_date
FROM employees
WHERE last_name in ('Matos','Taylor')
ORDER BY HIRE_DATE ASC;


Select last_name,
department_id
from EMPLOYEES
where department_id = 20
or department_id = 50
order by last_name asc;





SELECT last_name as "Employee",
     salary as "Monthly salary"
FROM EMPLOYEES
WHERE salary between 5000 and 12000
and department_id in ('20','50');





Select last_name,
hire_date
from EMPLOYEES
where hire_date >= '01-JAN-06' and hire_date < '01-JAN-07';



sELECT LAST_NAME, 
JOB_ID
FROM EMPLOYEES
where manager_id is null;



SELECT last_name,
salary,
commission_pct
from employees
wHERE COMMISSION_PCT IS NOT NULL
ORDER BY SALARY DESC, COMMISSION_PCT DESC;



SELECT last_name,
salary
FROM EMPLOYEES
WHERE salary > &salariu;




SELECT employee_id,
    last_name,
    salary,
    department_id
FROM EMPLOYEES
Where manager_id = &manager_name
Order By &ordin;




Select last_name
From employees
WHere last_name like ('__a%');



Select last_name
from employees
where last_name like ('%a%')
and last_name like ('%e%');



SELECT *
from EMPLOYEES;



Select last_name,
    job_id,
    salary
from employees
where job_id like ('%MAN%')
or job_id like ('%CLERK%')
and salary not in (2500,3500,7000);




SELECT last_name as Employee,
     salary as Monthly_Salary,
     commission_pct
From Employees
Where COMMISSION_PCT = 0.2;
      