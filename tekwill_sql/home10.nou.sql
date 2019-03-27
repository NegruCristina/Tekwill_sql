insert into my_employee(id,first_name, last_name,userid,salary)
(select employee_id, first_name, last_name,email,salary
from employees);
--1)
Create table my_employee
(id NUMBER(8),
first_name VARCHAR2(25),
last_name VARCHAR2(25),
userid VARCHAR2(8),
SALARY NUMBER(8,2));


insert into my_employee
values (1, 'Patel','Ralph','rpatel',895);

insert into my_employee
values (&employee_id,'&firts_name','&last_name','&email',&salary);
commit;

select *
from my_employee;

--9)
update my_employee
set salary =1100
where salary=895;
rollback;
delete from my_employee
where first_name='Patel';

--10)
update my_employee
set last_name='Drexler'
where id =3;

--11)
update my_employee
set salary = 1000
where salary <900;
rollback;

--12_)
select *
from my_employee;

delete from my_employee
where id in
(select employee_id
from employees);

--13)
delete from my_employee
where last_name='Betty';

--14)

commit;

--15)
commit all;

--16)

insert into my_employee
values (&id,'&first_name','&Last_name','&email','&salary');

--17)
commit;

--18)
savepoint name1;

--19)
delete from my_employee;

--20)
select *
from my_employee;

--21)
insert into my_employee
values(&id,'&last_name','&first_name','&email','&salary');


rollback commit all;

--22)
select *
from my_employee;

--23)
commit;
