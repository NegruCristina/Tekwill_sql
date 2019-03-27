select last_name, 
hire_date
from employees
where hire_date >(select hire_date
                  from employees
                  where last_name ='Davies');
                
                
                
select last_name, 
hire_date
from employees
where hire_date  in (select hire_date
                  from employees
                  where first_name ='Peter');
                  



select last_name,
job_id,
salary
from employees
where job_id =(select job_id
              from employees
              where last_name ='Taylor'
              and first_name = 'Winston')
and salary>(select salary
              from employees
              where last_name ='Taylor'
              and first_name = 'Winston');
               
select *
from employees;


--care este min in #
select *
from employees
where salary = (select min(salary)
                from employees);
                
                
 --ne arata salariati care au salariu mai mic de cit media de #               
select *
from employees
where salary < (select avg(salary)
                from employees);
                
                
 select *
from employees
where salary = (select max(salary)
                from employees);        


--angajatii care primesc un salariu mai mic decit cei din departamentul 80
 select *
from employees
where salary <= (select avg(salary)
                from employees
                where department_id=80); 
                
                


select department_id, 
min(salary)
from employees
group by department_id
having min(salary)>
                 (select min(salary)
                 from employees
                 where department_id=80);




select min(salary),
department_id
from employees
group by department_id;



select employee_id,
last_name
from employees
where salary in (select min(salary)
                 from employees
                 group by department_id);
                 
                 
                 
                 
select last_name,
job_id
from employees
where job_id = (select job_id
                 from jobs
                 where job_id = 'Architect');
                 
                 
                 
 select *
 from employees
 where job_id = (select job_id
                 from jobs
                 where job_id = 'Architect');
                 
 SELECT *
 from employees
 where salary < any 
                 (select salary
                 from employees
                 where job_id = 'IT_PROG')
and job_id <> 'IT_PROG' ;



 SELECT *
 from employees
 where salary > any 
                 (select salary
                 from employees
                 where job_id = 'IT_PROG')
and job_id <> 'IT_PROG' ;


 SELECT *
 from employees
 where salary = any 
                 (select salary
                 from employees
                 where job_id = 'IT_PROG')
and job_id <> 'IT_PROG' ;





 SELECT *
 from employees
 where salary > all 
                 (select salary
                 from employees
                 where job_id = 'IT_PROG')
and job_id <> 'IT_PROG' ;




 SELECT *
 from employees
 where salary < all 
                 (select salary
                 from employees
                 where job_id = 'IT_PROG')
and job_id <> 'IT_PROG' ;



 SELECT *
 from employees
 where salary in 
                 (select salary
                 from employees
                 where job_id = 'IT_PROG')
and job_id <> 'IT_PROG' ;



--Ne arata salariu minim pe fiecare department
select *
from employees
where (salary, department_id) in
                     (select min(salary),
                     department_id
                     from employees
                     group by department_id);
                     


select distinct manager_id
from employees;





select*
from employees    
where employee_id not in (select manager_id
                          from employees);
                          
                          
                          


select*
from employees    
where employee_id in (select manager_id
                          from employees);
                          
                          
 --- Inner Join/ JOIN/wHERE
Select *
from employees a
join employees b
on a.manager_id=b.employee_id;

Select *
from employees a, employees b
where a.manager_id=b.employee_id;

---left join/ left outer join/where(*)

Select *
from employees a 
left join employees b
on a.manager_id=b.employee_id;

Select *
from employees a
left outer join employees b
on a.manager_id=b.employee_id;

Select *
from employees a, employees b
where a.manager_id=b.employee_id(+);