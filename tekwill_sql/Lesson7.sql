SELECT *
FROM EMPLOYEES;


SELECT FIRST_NAME,
    LAST_NAME
FROM EMPLOYEES
WHERE LOWER(LAST_NAME) LIKE '%a%';



SELECT FIRST_NAME,
    LAST_NAME,
    LOWER(FIRST_NAME),
    UPPER(LAST_NAME),
    INITCAP (LAST_NAME)
FROM EMPLOYEES;





SELECT FIRST_NAME || '' || LAST_NAME,
      CONCAT(FIRST_NAME, LAST_NAME) AS "full NAME"
FROM EMPLOYEES;



SELECT FIRST_NAME || '' || LAST_NAME,
      CONCAT(FIRST_NAME, LAST_NAME) AS "full NAME",
      substr(FIRST_NAME,6,3)
FROM EMPLOYEES;




SELECT FIRST_NAME || '' || LAST_NAME,
      CONCAT(FIRST_NAME, LAST_NAME) AS "full NAME",
      substr(FIRST_NAME,1,3)
FROM EMPLOYEES;




SELECT FIRST_NAME || '' || LAST_NAME,
      CONCAT(FIRST_NAME, LAST_NAME) AS "full NAME",
      substr(FIRST_NAME,6,3)
FROM EMPLOYEES;

Select first_name,
       last_name,
       phone_number,
       email,
       substr (email,1,3)
       instr(email )
From EMPLOYEES;



SELECT FIRST_NAME || '' || LAST_NAME,
        EMAIL,
      --CONCAT(FIRST_NAME, LAST_NAME) AS "full NAME",
      --substr(FIRST_NAME,6,3),
      LENGTH(EMAIL)
    --instr(first_name, 'e',1,2) as "instr"
FROM EMPLOYEES;

SELECT EMPLOYEE_ID,
       CONCAT(LAST_NAME, FIRST_NAME)"NAME",
       LENGTH(LAST_NAME),
       INSTR(LAST_NAME,'a') "CONTAINS A"
FROM EMPLOYEES
WHERE SUBSTR(LASTRT_NAME, -1,1)= 'n';


select length('аспределенные системы контроля версий')
from dual;

SELECT INSTR('аспределенные системы контроля версий', 'сис' )
FROM DUAL;



SELECT INSTR('На дворе трава', 'а') FROM DUAL;

SELECT SUBSTR(EMPLOYEE_ID,1,5)
FROM EMPLOYEES;
