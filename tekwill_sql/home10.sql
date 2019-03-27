SELECT MAX(MARKS) HIGHEST,
MIN(MARKS) LOWEST,
ROUND(AVG(MARKS),2) AVERAGE
FROM AD_EXAM_RESULTS;



SELECT EXAM_ID,
MAX(MARKS) HIGHEST,
MIN(MARKS) LOWEST,
ROUND(AVG(MARKS),2) AVERAGE
FROM AD_EXAM_RESULTS
GROUP BY EXAM_ID
ORDER BY EXAM_ID;



SELECT COURSE_ID,
COUNT(COURSE_ID) "COURSE(*)"
FROM AD_STUDENT_COURSE_DETAILS
GROUP BY COURSE_ID
ORDER BY COURSE_ID;




SELECT EXAM_ID,
COURSE_ID,
AVG(MARKS)
FROM AD_EXAM_RESULTS
WHERE MARKS>85
GROUP BY EXAM_ID,COURSE_ID;



SELECT MAX(SALARY)- MIN(SALARY) DIFFERENCE
FROM AD_FACULTY_DETAILS;


SELECT marks,
MAX(AVG(MARKS)) 
FROM AD_EXAM_RESULTS
GROUP BY  MARKS,MAX(AVG(MARKS));


SELECT COURSE_ID,
MIN(MARKS)
FROM AD_EXAM_RESULTS
WHERE COURSE_ID IN (190,191,192)
GROUP BY COURSE_ID
HAVING MIN(MARKS)>75
ORDER BY MIN(MARKS);





Select job_id,
max(salary) Maximum,
min(salary) "Minimum",
sum(salary) "Sum",
round(avg(salary)) Average
from employees
group by job_id;




Select job_id,
count(job_id) as "Count(*)"
from employees
group by job_id;

Select job_id,
count(job_id) as "Count(*)"
from employees
where job_id ='IT_PROG'
group by job_id;



--7)
select count(manager_id) "NUMBER OF MANAGER"
from employees
where manager_id = 100
group by manager_id;

select COUNT(DISTINCT MANAGER_ID) "NUMBER OF MANAGER"
from employees;



--8)

SELECT MAX(SALARY)-MIN(SALARY)DIFFERENCE
FROM EMPLOYEES;

--9)

Select manager_id,
min(salary)
from EMPLOYEES
group by manager_id, salary
having salary>6000
order by salary desc;

--10)
select employee_id,
to_number(sum(hire_date),0)
from employees
having hire_date in ('2005','2006','2007','2008');

select*
from employees;

--11
select job_id,
sum(salary)
from EMPLOYEES
group by job_id
having department_id in (20,50,80,90);
