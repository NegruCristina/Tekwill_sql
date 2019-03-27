--1)
Select last_name,
hire_date
from EMPLOYEES
where last_name =
           (Select last_name
           from employees
           where last_name= &name);


--2)


select employee_id,
last_name,
salary
from employees
where salary >
           (select avg(salary)
           from employees)
order by 3;

---3)
select employee_id,
last_name
from employees
where department_id in
                        (select department_id
                        from employees
                        where last_name like '%u%');
                        
---4)
select last_name,
department_id
job_id
from employees
where department_id in 
                 (select department_id
                 from departments
                 where location_id = 1700);
                 


--5)
select last_name,
salary
from employees
where salary in
             (select salary 
             from employees
             where last_name = 'King');
             
--6)

select department_id,
last_name,
job_id
from employees
where department_id  in
                    (select department_id
                    from departments
                    where department_name like '%cutiv%');
                    
--7)

select last_name,
salary
from employees
where salary > any
                (select salary
                from employees
                where department_id = 60);
                
--8)
select employee_id,
last_name,
salary
from employees
where department_id in
                 (select department_id
                from employees
                where last_name like '%u%')
and salary > (select avg(salary)
              from employees);