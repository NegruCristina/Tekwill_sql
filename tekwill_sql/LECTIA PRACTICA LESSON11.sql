Create table job_grades
As(
Select 'A' grade_level,1000 lowest_sal,2999 highest_sal From dual
Union
Select 'B',3000,5999 From dual
Union
Select 'C',6000,9999 From dual
Union
Select 'D',10000,14999 From dual
Union
Select 'E',15000,24999 From dual
Union
Select 'F',25000,40000 From dual);

--1)
Select a.last_name || ' ' || first_name as Full_Name,
b.department_name
From employees a
join departments b
on a.DEPARTMENT_ID=b.department_id;

--1b)
Select DEPARTMENT_NAME,
count(DEPARTMENT_NAME)
FROM DEPARTMENTS A
JOIN EMPLOYEES B
ON A.DEPARTMENT_ID=B.DEPARTMENT_ID
GROUP BY DEPARTMENT_NAME
ORDER BY DEPARTMENT_NAME DESC;

Select*
FROM employees;

--2)
SELECT a.last_name || ' ' || first_name as Full_Name,
b.department_name,
c.country_name,
d.city,
d.state_province,
e.region_name
from employees a
left join departments b
on a.department_id= b.department_id
left join locations d
on d.location_id =b.location_id
left join COUNTRIES c
on c.country_id=d.country_id
left join regions e
on e.region_id=c.region_id;



--3)
Select a.last_name || ' ' || a.first_name as Full_Name,
      b.EMPLOYEE_ID,
      b.salary,
      a.salary
from employees a
join employees b
on b.employee_id=182
where a.salary < b.salary;


--4)    
Select a.last_name || ' ' || a.first_name as Full_Name_man,
a.salary Salary_man,
b.last_name || ' ' || b.first_name as Full_Name,
b.salary Salary_emp,
a.salary-b.salary as Dif_salary
from employees a
join employees b
on a.employee_id = b.manager_id;


--5)
Select b.last_name || ' ' || b.first_name as Full_Name,
c.department_name
from employees a
JOIN EMPLOYEES B
ON A.DEPARTMENT_ID=B.DEPARTMENT_ID
and a.last_name ='Taylor'
join departments C
on b.DEPARTMENT_ID=c.DEPARTMENT_ID;


SELECT*
FROM employees
where last_name = 'Taylor';



--6)
select  last_name || ' ' || first_name as Full_Name,
max_salary,
salary,
max_salary-salary Dif_salary
from EMPLOYEES 
Natural join jobs;


--7)
select a.last_name || ' ' || a.first_name as Full_Name,
d.job_title,
c.department_name,
a.hire_date,
b.start_date,
b.end_date
from employees A --using (job_id)
join job_history B ON A.job_id=B.job_id --using (job_id)
join departments C ON B.DEPARTMENT_ID=C.DEPARTMENT_ID--using (department_id)
JOIN JOBS D ON D.JOB_ID=a.JOB_ID
--Where b.start_date < '01-JAN-93'  and b.end_date >'31-AUG-97'
where b.start_date between  '01-JAN-93' and '31-AUG-97' ;


select*
from job_history;
--8)
select*
from employees;



select b.department_name,
avg(salary) Averange,
--a.commission_pct Comission,
--count(employee_id)
count(commission_pct)
from employees a
join departments b 
on a.department_id= b.department_id
--and a.commission_pct is not null
group by b.department_name; --a.commission_pct;



Select department_name
   , ROUND(AVG(salary)) as salariu_mediu
   , COUNT(commission_pct) as persoane_cu_comission
From departments
Join employees
Using(department_id)
Group by department_name;

select *--count(commission_pct) --distinct department_id
from employees
where commission_pct is not null;

--9)
select a.last_name || ' ' || a.first_name as Full_Name,
b.job_title
from employees a
join jobs b
on a.job_id=b.job_id
where a.department_id=80;

select *
from employees
where department_id=80;

--10)


select b.city,
c.country_name,
a.department_name
from departments a
join locations b
using (location_id)
join countries c
on b.country_id=c.country_id
order by 3;

select * --department_name
from departments;

--11)
select a.department_name,
b.last_name || ' ' || b.first_name as Full_Name,
a.manager_id
from departments a
left join employees b
on b.employee_id=a.manager_id;

--12)
select *
from  jobs;


select b.job_title,
avg(salary)
from employees a
join jobs b
on a.job_id=b.job_id
group by job_title;


--13)
select b.job_title,
a.last_name || ' ' || a.first_name as Full_Name,
a.salary
from employees a
join jobs b
on a.job_id=b.job_id
where salary> 12000;

--14)

select a.last_name || ' ' || a.first_name as Full_Name,
b.department_name,
c.city
from employees a
join departments b
on a.employee_id=b.manager_id
join locations c
on b.location_id=c.location_id;

--15)
select b.job_title,
a.last_name || ' ' || a.first_name as Full_Name,
round((sysdate-hire_date)/7) days
from employees a
join jobs b
on a.job_id=b.job_id
where a.department_id =80;

--16)
select*
from locations;
select b.department_name,
a.last_name || ' ' || a.first_name as Full_Name,
a.salary,
c.city
from employees a
join departments b
using (department_id)
join locations c
using (location_id)
where city like ('%London%');

--17)
select*
from departments;



select 
b.department_name,
count(a.employee_id)
from employees a
join DEPARTMENTS b
on a.department_id=b.department_id
group by  b.department_name;

