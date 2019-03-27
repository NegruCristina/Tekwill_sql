insert all
into copy_emp_1(employee_id,last_name,email,job_id,hire_date)
into empl_1(employee_id,last_name,email,job_id,hire_date)
select employee_id,last_name,email,job_id,hire_date
from employees;

select*
from copy_emp_1;

select*
from empl_1;

create table copy_emp_1
 as select *
from employees;

truncate table  empl_1;
delete table empl;

insert all
when hire_date >'05-FEB-14' then
into copy_emp_1 (employee_id,last_name,email,job_id,hire_date)
when job_id in ('ST_REP') then
into empl_1 (employee_id,last_name,email,job_id,hire_date)
select employee_id,last_name,email,job_id,hire_date
from employees;

select *
from copy_emp_1;

select *
from empl_1;


select*
from user_tables;

select *
from EMPLOYEES2;

insert first
when hire_date >'05-FEB-14' then
into copy_emp_1 (employee_id,last_name,email,job_id,hire_date)
when job_id in ('ST_REP','SH_CLERK') then
into empl_1 (employee_id,last_name,email,job_id,hire_date)
else 
into EMPLOYEES2 (employee_id,last_name,email,job_id,hire_date)
select employee_id,last_name,email,job_id,hire_date
from employees;


select*
from copy_emp_1;

select*
from empl_1;

select*
from EMPLOYEES2;

select*
from employees;


insert first
when hire_date >'05-FEB-14' then
into copy_emp_1 (employee_id,last_name,email,job_id,hire_date)
when COMMISSION_PCT > 10 then
into empl_1 (employee_id,last_name,email,job_id,hire_date)
when job_id in ('ST_REP','SH_CLERK') then
into empl_1 (employee_id,last_name,email,job_id,hire_date)
else 
into EMPLOYEES2 (employee_id,last_name,email,job_id,hire_date)
select employee_id,last_name,email,job_id,hire_date
from employees;



create table pivot_table_insert
(emp_id number(5),
week number(5),
day_1 number(5),
day_2 number,
day_3 number,
day_4 number,
day_5 number);


insert into pivot_table_insert
values(130,5,200,288,788,111,117);


create table pivot_table_insert_1
(emp_id number(5),
week number(5),
day number(5));


select*
from pivot_table_insert_1;

insert all
into pivot_table_insert_1 values (emp_id,week,day_1)
into pivot_table_insert_1 values (emp_id,week,day_2)
into pivot_table_insert_1 values(emp_id,week,day_3)
into pivot_table_insert_1 values (emp_id,week,day_4)
into pivot_table_insert_1 values (emp_id,week,day_5)
select emp_id,week,day_1,day_2,day_3,day_4,day_5
from pivot_table_insert;



update copy_emp_1 t1
set email = (select email 
             from employees t2
             where t1.employee_id=t2.employee_id);
             
             
             


merge into copy_emp_1 t1
using (select *
             from employees) t2
on (t1.employee_id=t2.employee_id)
when matched then 
update
set t1.email=t2.email;




merge into copy_emp_1 t1
using  employees t2
on (t1.employee_id=t2.employee_id)
when matched then 
update
set t1.email=t2.email;





merge into copy_emp_1 t1
using  (select a.employee_id, a.email, b.department_id,b.department_name
       from employees a
       left join departments b
       on a.department_id=b.department_id
       where upper(b.department_name) like '%A%') t2
on (t1.employee_id=t2.employee_id)
when matched then 
update
set t1.email=t2.email,
t1.department_name=t2.department_name;

alter table copy_emp_1
add department_name varchar2(25);


select *
from empl_1;

select *
from departments;

drop table empl_1;

flashback table empl_1 to before drop;


select *
from empl_1
where email ='LPOPP';


update empl_1
set salary = 40000
where email ='LPOPP';



select salary
from empl_1
as of timestamp(systimestamp -interval '1'minute)
where email ='LPOPP';


alter table empl_1 enable row movement;

flashback table empl_1 to timestamp(systimestamp -interval '1'minute);



select*
from scn;


select *
from empl_1
versions between scn minvalue and maxvalue
where email ='LPOPP';
