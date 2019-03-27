select *
from retired_emps;


--manager de angajati
select distinct b.*,
'Employee_manager' as emp_type
from employees a
join employees b
on a.manager_id=b.employee_id
order by 1;

--manager de departament
select a.*, 
'Department_manager' as emp_type
from employees a
join departments b
on a.employee_id=b.manager_id
order by 1 ;




--la noi sunt persoane care sunt si manager de oameni si de departamente
select distinct b.*,
'Employee_manager' as emp_type
from employees a
join employees b
on a.manager_id=b.employee_id

union

select a.*, 
'Department_manager' as emp_type
from employees a
join departments b
on a.employee_id=b.manager_id;



---obligatoriu trebuie sa fie ordinea coloanelor in ambele tabele
select distinct b.employee_id,
b.last_name,
'Employee_manager' as emp_type
from employees a
join employees b
on a.manager_id=b.employee_id

union

select a.last_name,
a.employee_id,
'Department_manager' as emp_type
from employees a
join departments b
on a.employee_id=b.manager_id;



--el ia alias dupa 1 select
select distinct b.last_name as name,
b.employee_id as namet,
'Employee_manager' as emp_type
from employees a
join employees b
on a.manager_id=b.employee_id

union

select a.last_name,
a.employee_id,
'Department_manager' as emp_type
from employees a
join departments b
on a.employee_id=b.manager_id;


select distinct b.last_name,
b.employee_id,
'Employee_manager' as emp_type
from employees a
join employees b
on a.manager_id=b.employee_id

union all

select a.last_name,
a.employee_id,
'Department_manager' as emp_type
from employees a
join departments b
on a.employee_id=b.manager_id;



--il facem ca un subselect unde putem pe urma sa il folosim
select *
from  (select distinct b.last_name,
                        b.employee_id,
                       'Employee_manager' as emp_type
                          from employees a
                        join employees b
                           on a.manager_id=b.employee_id

                         union all
                         
                        select a.last_name,
                         a.employee_id,
                    'Department_manager' as emp_type
                     from employees a
                     join departments b
                         on a.employee_id=b.manager_id);
                         
       
       
       
       
--putem sa facem join cu subselect intre 2 tabele chiar daca noi am facut un nou tabel                         
select t2.job_title,
t1.*
from  (select distinct b.*
                      -- 'Employee_manager' as emp_type
                          from employees a
                        join employees b
                           on a.manager_id=b.employee_id

                         union all
                         
                        select a.*
                    --'Department_manager' as emp_type
                     from employees a
                     join departments b
                         on a.employee_id=b.manager_id)t1
left join jobs t2
on t1.job_id=t2. job_id;



select *
from  (select distinct b.*
                          from employees a
                        join employees b
                           on a.manager_id=b.employee_id) t1

left join (select a.*
                       from employees a
                     join departments b
                         on a.employee_id=b.manager_id)t2
on t1.employee_id=t2.employee_id;




select *
from  (select distinct b.*
                          from employees a
                        join employees b
                           on a.manager_id=b.employee_id) t1

full outer join (select a.*
                       from employees a
                     join departments b
                         on a.employee_id=b.manager_id)t2
on t1.employee_id=t2.employee_id;



Insert Into retired_emps
Select 209,'Nanc Gren'  ,'FI_MGR'  ,100,'17-AUG-10','17-AUG-15',12008,null,80 From dual
Union ALL
Select 210,'Danel Faet' ,'ST_CLERK',123,'16-AUG-10','10-JUL-12',9000,0.35,90 From dual    
Union All
Select 211,'Jon Chn'     ,'PU_MAN'  ,131,'28-SEP-13','05-DEC-14',8200,1.15,80 From dual
Union All
Select 212,'Doug Gree'  ,'SH_CLERK',147,'13-JAN-16','13-MAY-18',2600,null,50 from dual
Union all
Select 213,'Jenn Whal'  ,'AD_ASST' ,108,'17-SEP-11','17-OCT-15',4400,0.25,10 from dual
Union all
Select 214,'Mich Hart'    ,'MK_MAN'  ,149,'17-FEB-12','20-FEB-13',13000,0.2,20 from dual
Union all
Select 215,'Pa Fy'      ,'MK_REP'  ,205,'17-AUG-13','17-NOV-14',6000,null,20 from dual;

select *
from retired_emps;


select first_name ||' ' || last_name Full_name ,
job_id,
hire_date,
salary
from employees
union all
select ename,
job,
hiredate,
sal
from retired_emps;



select first_name ||' ' || last_name Full_name ,
job_id,
hire_date,
salary
from employees
intersect
select ename,
job,
hiredate,
sal
from retired_emps;


Insert Into retired_emps
Select 2015,'TJ Olson'  ,'ST_CLERK'  ,100,'10-APR-15','17-AUG-15',2100,null,80 From dual;





select first_name ||' ' || last_name Full_name ,
job_id,
hire_date,
salary
from employees
minus
select ename,
job,
hiredate,
sal
from retired_emps;



select first_name ||' ' || last_name Full_name ,
job_id,
hire_date,
salary
from employees
minus
select ename,
job,
hiredate,
sal
from retired_emps
order by 2;

create table regions_old as
select *
from regions;


