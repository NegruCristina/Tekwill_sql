SELECT ROUND(TO_DATE('16-APR-18', 'DD-MON-YY'), 'MONTH') AS EXPLICIT_CONVERSION,
LAST_DAY('12-JUL-15') IMPLICIT_DATE_CONVERSION,
MONTHS_BETWEEN('12-JUL-15','12-JUL-15') IMPLICT_DATE_CONVERSION_1,
FROM DUAL;


SELECT '2'-1 CHAR_AS_NUMBER,
'ABC'-1 NON_VALID_NUMBER
FROM DUAL;


SELECT HIRE_DATE,
     HIRE_DATE || q'(IT'S DATE)',
     TO_CHAR(HIRE_DATE, 'DAY-MONTH-YEAR') AS TO_CHER_1,
     TO_CHAR(HIRE_DATE, 'DD-MM-YY') AS TO_CHER_2,
     TO_CHAR(HIRE_DATE, 'YYYY-MM-DD') AS TO_CHER_3,
    SYSDATE - TO_DATE(TO_CHAR(HIRE_DATE, 'YYYY-MM-DD')) AS TO_CHER_4
FROM EMPLOYEES;




Select employee_id,
    to_char(hire_date,'DD-MM-YY') Month_hired
From employees
Where last_name = 'Higgins';



Select to_char(salary, 'L99,999.00') Salary
From employees;
--WHERE LAST_NAME = 'Ernst';

SELECt *
FROM employees;





SELECT hire_date,
to_char(hire_date, 'DD-MM-YYYY') as to_char,
to_char(hire_date,'Day-Month-YYYY') as to_char1,
to_char(hire_date,'DD/MM/YYYY') as to_char2,
to_char(hire_date, 'DD-MM-YYYY HH24:MI:SS AM') as to_char3
FROM employees;




SELECT hire_date,
to_char(hire_date, 'DD "of" Month,YYYY') month_of,
to_char(hire_date, 'Ddspth "of" Month,YYYY') month_of2,
to_char(hire_date, 'DDspth "of" Month,YYYY') month_of3
FROM employees;




SELECT hire_date,
to_char(hire_date, 'Ddspth "of" Month,YYYY') month_of,
to_char(hire_date, 'fmDD "of" Month,YYYY') month_of2
FROM employees;




SELECT hire_date,
to_char(employee_id,'999.99999'),
to_char(employee_id,'$999.99999') as to_char,
to_char(employee_id,'L999.99999') as to_char1
FROM employees;




Select to_char(salary, 'L99,999.00') Salary
From employees;



SELECT phone_number,
to_number('549,999.9999', '999,999,9999')
FROM employees
WHERE employee_id between 100 and 144;





SELECT last_name,
hire_date
FROM employees
Where hire_date= to_date('17-06-2011','DD/MM/YYYY');



SELECT round(months_between(sysdate,to_date('17-06-2011','DD-MM-YYYY'))) as string_with_date,
sysdate,
to_date('17-06-2011', 'DD-MM-YYYY')
FROM employees;





Select last_name,
phone_number,
to_number(replace(phone_number,'.',','),'999,999,9999'),
to_char(145.782,'999D999'),
to_number('590,423,4567', '999,999,9999')
from employees
where employee_id between 100 and 144;






Select salary,
COMMISSION_pct,
nvl(commission_pct,0) as substitution,
salary*commission_pct as full_salary,
salary*nvl(commission_pct,1) as full_salary2
FROM employees;





Select*
FROM employees
Where nvl(commission_pct,0)<=0.2;






Select*
FROM employees
Where nvl(commission_pct,1)<=0.2;


Select nvl2(commission_pct,1,0)
FROM employees;



Select nvl2(commission_pct,1,0)
FROM employees
Where nvl2(commission_pct,1,0)=0;


Select nvl2(commission_pct,1,0),
nullif(10,5),
FROM employees
Where nvl2(commission_pct,1,0)=0;




Select commission_pct,
manager_id,
employee_id,
department_id,
coalesce(commission_pct,manager_id,department_id,employee_id) as return
FROM employees;



Select commission_pct,
manager_id,
employee_id,
department_id,
nvl(manager_id,'12')
FROM employees;


