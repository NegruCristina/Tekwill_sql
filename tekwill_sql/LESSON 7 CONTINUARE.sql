SELECT sysdate,
      current_date,
      sessiontimezone,
      current_timestamp
FROM dual;



SELECT last_name,
       hire_date,
    Round ((sysdate-hire_date)/7) as week
From EMPLOYEES
Where department_id = 90;





SELECT *
FROM ad_exam_details;




SELECT round((sysdate-start_date)) as days,
 round((sysdate-start_date)/7) as week
FROM ad_exam_details;


--Ne arata cine lucreaza mai mult de 5 ani
SELECT first_name || ' ' || last_name "Full Name",
sysdate,
round((sysdate-hire_date)/7) as how_old_was_hired,
round((sysdate-hire_date)/365) as years
FROM EMPLOYEES
Where round((sysdate-hire_date)/365)>5;

--NE ARATA CIND O PERSOANA ANUMITA S-A ANGAJAT DI ZIUA DATA
SELECT first_name || ' ' || last_name,
sysdate,
HIRE_DATE,
round((sysdate-hire_date)/7) as how_old_was_hired,
round((sysdate-hire_date)/365)*12 AS NR_OF_MONTHS_1,
round((sysdate-hire_date)/365) as years,
MONTHS_BETWEEN(SYSDATE, HIRE_DATE) NR_OF_MONTHS---EL AICI MODIFICA TIPUL DE DATE DIN DATA IN NUMAR
FROM EMPLOYEES
Where round((sysdate-hire_date)/365)>5;


--Ne arata ce data va fi peste 4 luni din data de astazi.
SELECT first_name || ' ' || last_name,
sysdate,
HIRE_DATE,
ADD_MONTHS(SYSDATE,4) ADD_MONTHS
FROM EMPLOYEES;


-- Ne arata ce zi va fi a 4 zi dupa ziua de astazi si ce data va fi urmatoarea vinere.
SELECT first_name || ' ' || last_name,
sysdate,
HIRE_DATE,
NEXT_DAY(SYSDATE,4) NEXT_DAY,
NEXT_DAY(SYSDATE,'FRIDAY') NEXT_DAY_1
FROM EMPLOYEES;


SELECT first_name || ' ' || last_name,
sysdate,
HIRE_DATE,
LAST_DAY(SYSDATE) LAST_DAY,
LAST_DAY(HIRE_DATE) LAST_DAY_1,
LAST_DAY('13-JAN-09') LAST_DAY_2
FROM EMPLOYEES;




select HIRE_DATE,
ROUND (HIRE_DATE, 'YEAR') AS ROUND_YEAR,
ROUND(SYSDATE,'YEAR')
FROM EMPLOYEES;



select HIRE_DATE,
ROUND (HIRE_DATE, 'MONTH') AS ROUND_MONTH,
ROUND(SYSDATE,'MONTH')
FROM EMPLOYEES;




select HIRE_DATE,
TRUNC (HIRE_DATE, 'MONTH') AS TRUNC_MONTH,
TRUNC(SYSDATE,'MONTH') TRUNC_MONTH_1
FROM EMPLOYEES;





