select a.employee_id emp_id, 
a.last_name || '' || a.first_name Full_Name,
b.employee_id emp_id2,
a.email,
a.salary,
a.hire_date,
a.job_id,
a.department_id,
c.department_name,
d.state_province || ',' || d.city || ',' || d.street_address || ',' || d.postal_code as City
from employees a
left join employees b
on a.manager_id=b.employee_id
left join departments c
on a.department_id=c.department_id
left join locations d
on c.location_id=d.location_id;


create or replace view employee_info as
select a.employee_id emp_id, 
a.last_name || '' || a.first_name Full_Name,
b.employee_id emp_id2,
a.email,
a.salary,
a.hire_date,
a.job_id,
a.department_id,
c.department_name
from employees a
left join employees b
on a.manager_id=b.employee_id
left join departments c
on a.department_id=c.department_id;

select*
from employee_info;


create or replace view employee_id as
select a.employee_id emp_id, 
a.last_name || '' || a.first_name Full_Name,
b.employee_id emp_id2,
a.email,
a.salary,
a.hire_date,
a.job_id,
a.department_id,
c.department_name,
d.state_province || ',' || d.city || ',' || d.street_address || ',' || d.postal_code as City
from employees a
left join employees b
on a.manager_id=b.employee_id
left join departments c
on a.department_id=c.department_id
left join locations d
on c.location_id=d.location_id;




select b.employee_id emp_id, 
b.last_name || '' || b.first_name Full_Name,
count(a.employee_id) as amount_of_emp
from employees a
left join employees b
on a.manager_id=b.employee_id
group by b.employee_id,
b.last_name || '' || b.first_name;

create or replace view Manager_tree as
select b.employee_id emp_id, 
b.last_name || '' || b.first_name Full_Name,
count(a.employee_id) as amount_of_emp
from employees a
left join employees b
on a.manager_id=b.employee_id
group by b.employee_id,
b.last_name || '' || b.first_name;

select a.*,
b.amount_of_emp
from employees a
left join employees b
on a.manager_id=b.employee_id;



create or replace view test_emplyee_vw as
select employee_id,
job_id,
salary
from employees;

select*
from employees;


update test_emplyee_vw
set salary=10
where job_id in ('IT_PROG','FI_ACCOUNT');