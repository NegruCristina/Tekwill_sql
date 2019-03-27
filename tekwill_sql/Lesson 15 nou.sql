select*
from employees_old;


alter table employees_old
add constraint employee_id_pk 
primary key (employee_id);


alter table employees_old
add constraint department_id_fk 
foreign key(department_id)references departments(department_id);

alter table employees_old
modify employee_id primary key;


alter table employees_old
drop constraint employee_id_pk;



desc employees_old;


alter table employees_old
drop primary key cascade;


alter table departments_old
add constraint department_id_pk1 
primary key (department_id);



alter table employees_old
add constraint test_1 foreign key (department_id) references departments_old(department_id) on delete cascade;



delete from departments_old
where department_id=30;


select*
from DEPARTMENTS_old
where department_id=30;


alter table departments_old
drop primary key cascade;  


alter table employees_old
add constraint test_1 foreign key (department_id) references departments_old(department_id);


alter table employees_old
add constraint test_2 foreign key (department_id) references departments_old(department_id) on delete set null;





alter table locations_old
add constraint location_id_pk1 
primary key (location_id);

alter table departments_old
add constraint test_3 foreign key (location_id) references locations_old(location_id);


select*
from departments_old;


select*
from locations_old;

delete from departments_old
where department_id =50;



select*
from recyclebin;

create table prim_1
as select *
from employees_old;

drop table prim_1 purge;



