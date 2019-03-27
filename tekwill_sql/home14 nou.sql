--1)
create view employees_vu
as select employee_id, 
last_name as employee,
department_id
from employees;

--2)
select*
from employees_vu;

--3)
select Employee,
department_id
from employees_vu;


--4)
create view  dept50
as select employee_id EMPNO,
last_name EMPLOYEE,
department_id DEPTNO
from employees
where department_id=80;

--5)
desc dept50;

select*
from dept50;

--6)
update dept80
set deptno=50
where employee='Abel';


--7)
select view_name,
text
from user_views;

--8)
drop view dept50;
drop view employees_vu;