--1)
select last_name,
department_id,
salary
from employees
where department_id is not null
and salary is not null
and commission_pct is not null;

--2)
select a.last_name,
b.department_name,
a.salary
from employees a
join departments b
on a.department_id=b.department_id
and (salary, job_id)in (select c.salary
                       c.job_id
                       from employees c
                       join departments d
                       on e.department_id=d.department_id
                       and d.location_id 1700);
                       
--3_
select a.last_name,
a.hire_date,
a.salary
from employees a
join employees b
on b.salary=a.manager_id
where last_name= 'Kochhar'
and last_name <>'Kochhar';

select last_name,
hire_date,
salary
from employees 
where (salary, manager_id) in
                       (select salary, manager_id
                       from employees
                        where last_name= 'Kochhar'
and last_name <>'Kochhar');

--4)

