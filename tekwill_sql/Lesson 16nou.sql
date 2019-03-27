select department_name,city
from departments
natural join (select l.location_id,
              l.city,
              l.country_id
              from locations l
              join countries c
              on l.country_id=c.country_id
              join regions 
              using(region_id)
              where region_name ='Europe');
              
              


select last_name,
first_name,
manager_id,
department_id
from employees
where  manager_id in (select manager_id
                      from employees
                       where first_name='Daniel')
and department_id in (select department_id
                      from employees
                      where first_name='Daniel');



Select *
From departments
Natural Join (Select a.location_id, a.city, a.country_id 
              from locations a
              join countries b
              on a.country_id=b.country_id
              join regions c
              using (region_id)
              Where region_name='Europe');
              
              
              
Select *
From departments a
Natural Join locations b
Join countries c
on b.country_id=c.country_id
join regions d
Using (region_id)
Where region_name='Europe';

Create View Test_VU as
              Select a.location_id, a.city, a.country_id 
              from locations a
              join countries b
              on a.country_id=b.country_id
              join regions c
              using (region_id)
              Where region_name='Europe';
              
Select *
From departments
Natural Join test_vu;

Select *
From employees
Where job_id in (Select job_id
                 From employees
                 Where last_name='De Haan');
                 
--Pairwise Select
Select *
From employees
Where (manager_id, department_id) in (Select manager_id, department_id
                                      From employees
                                      Where employee_id in (174,199))
ANd employee_id not in(174,199);

Select *
From employees
Where manager_id in (Select manager_id
                     From employees
                     Where employee_id in (174,199))
And  department_id in (Select department_id
                       From employees
                       Where employee_id in (174,199))                   
ANd employee_id not in(174,199);

Insert into employees 
Values (502,'Donald','Corner','dfgg','650.650.6352','21-JUN-18','ST_CLERK',2600,NULL,124,80);

Insert into employees 
Values (501,'Donald','Corner','dfgdr','650.650.6352','21-JUN-18','ST_CLERK',2600,NULL,149,50);

--Scalar subselect (subquery se pune in Select inainte de From)
Select Case when department_id=(Select department_id 
                                From departments
                                Where location_id=1800)
       Then 'Canada'  
       When department_id=(Select department_id 
                           From departments
                           Where location_id=1500)
       Then first_name ELSE 'USA' 
       END as scalar_case,
       a.*
From employees a;

Select a.*,
       (Select Count(*)
       From employees b
       Where b.department_id=a.department_id) as count
From departments a;

--Correlated subquery (subselectul se pune in Where)
Select *
From employees t1
Where salary > (Select AVG (salary)
                From employees t2
                Where t1.department_id=t2.department_id);
                
Select d.*, e.avg_salary
From employees d
Join (Select AVG(salary) as avg_salary,
             department_id
      From employees
      Group by department_id) e
ON d.department_id=e.department_id
Where d.salary>e.avg_salary;

--EXIST OPTION ne da rezultate doar daca exista coloane dupa care facem legatura
Select *
From employees a
where Exists (Select NULL
              From employees b
              Where b.manager_id=a.employee_id); --vedem managerii de departamente
              
Select Distinct a.*
From employees a
Join employees f
On f.manager_id=a.employee_id;

Select department_id, department_name
From departments d
Where NOT EXISTS (Select NULL 
                  From employees e
                  Where d.department_id=e.department_id); --(ne da departamentele care nu au angajati)
                  
--WITH Clause
Select h.last_name, h.employee_id,
       g.department_name, j.job_title,
       j.max_salary, j.min_salary
from (Select *
      From employees a
      where Exists (Select NULL
                    From employees b
                    Where b.manager_id=a.employee_id)) h --vedem managerii de departamente
Left Join departments g
on h.department_id=g.department_id
Left join jobs j
on h.job_id=j.job_id;
                  
With h as (Select *
      From employees a
      where Exists (Select NULL
                    From employees b
                    Where b.manager_id=a.employee_id)),
     g as (Select *
           From departments),
     j as (Select *
     From jobs)
Select *
From h
Left join g
on h.department_id=g.department_id
Left join j
on h.job_id=j.job_id;






Create table Flights as
Select 'San Jose' as source
      ,'Los Angeles' as destination
      ,1.3 as flight_times
From dual
Union
Select 'New York' as source
      ,'Boston' as destination
      ,1.1 as flight_times
From dual
Union
Select 'Los Angeles' as source
      ,'New York' as destination
      ,5.8 as flight_times
From dual;


with reachable_from (source, destination, totalflighttime) as
(
select source, destination, flight_times
from flights
union all 
select incoming.source,
    outgoing.destination,
    incoming.totalflighttime+outgoing.flight_times   
    from   reachable_from incoming, flights outgoing
where incoming.destination= outgoing.source)
select source, destination, totalflighttime
from reachable_from
order by 3 desc;
    