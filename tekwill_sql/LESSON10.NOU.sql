insert into departments(department_id,department_name, manager_id,location_id)
values (280,'Public Relations',100,1700);

select *
from departments;

insert into departments(department_id, department_name)
values (281,'Purchasing');


desc departments

insert into departments(department_id,department_name,manager_id,location_id)
values (282,'Public Relations',null,null);



insert into departments
values ('Public Relations',null,null);

SELECT*
FROM EMPLOYEES;

insert into employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id)
values (207,'NEGRU','CRISTINA','CNEGRU','555.777.8888',SYSDATE,'IT_PROG',10000,NULL,205,110);


INSERT INTO EMPLOYEES
VALUES(212,'NEGRUTA','ELENA','ENEGRUTA','555.777.8888',TO_DATE('29.10.2018','DD.MM.YYYY'),'IT_PROG',10000,NULL,205,110);




insert into departments
values (284,'Public Relations',null,null);




insert into departments
values (&DEPARTMNT_ID,&'DEPARTMENT_NAME',&MANAGE_ID,&LOCATION_ID);

Create table sales_reps
(ID NUMBER(6) ,
NAME VARCHAR2(25),
SALARY NUMBER(8,2),
COMMISSION_PCT NUMBER(2,2));


INSERT INTO sales_reps
(SELECT EMPLOYEE_ID,
LAST_NAME,
SALARY,COMMISSION_PCT
FROM EMPLOYEES);

SELECT *
FROM sales_reps;


select *
from employees
where employee_id =113;

select *
from departments;

update employees
set department_id = 50,
first_name='Luisa',
phone_number ='555.111.1456'
where employee_id =113;


--1 varianta
update employees
set (job_id, salary)= (select job_id,
                      salary
                      from employees
                      where employee_id =205)
where employee_id =103;

--2 varianta
select job_id,
salary
from employees
where employee_id =205;

update employees
set job_id = 'AC_MGR'
salary = 12008
where employee_id =103;


select *
from copy_emp;

INSERT INTO copy_emp
(SELECT *
FROM EMPLOYEES);



update copy_emp
set department_id = (select department_id
                     from employees
                     where employee_id =100)
where job_id = (select job_id
                     from employees
                     where employee_id =200);
                     
                     
--se schimba departamentul la cei care au employee=130 asa cum este si la employee100;                     
update copy_emp
set department_id = (select department_id
                     from employees
                     where employee_id =100)
where job_id = (select job_id
                     from employees
                     where employee_id =130);
                     
                     
-- in oracle nu permite de facut cu join, dar un alte programe el permite                     
update copy_emp a 
join employees b
on a.empno=b.employee_id
set a.department_id=b.employee_id;



select *
from copy_emp;



delete from copy_emp
where empno>206;



delete from departments
where department_id in (70,
280,
282,
283,
284);


delete from copy_emp
where department_id in
(select department_id
from departments
where lower(department_name) like ('%public%'));

INSERT INTO copy_emp
(SELECT *
FROM EMPLOYEES);

commit;

truncate table copy_emp;



delete from copy_emp
where department_id in (70,280,282,283,284);

rollback;

commit;

insert into copy_emp
values (102,	'Lex',	'De Haan',	'LDEHAAN',	'515.123.4569',	'13-JAN-09',	'AD_VP',	17000,	'0.5',	100,	90);

savepoint firts_savepoint;

delete from copy_emp
where department_id=60;

rollback to firts_savepoint;
 
 commit;
 
 
 select employee_id,
 first_name,
 salary,
 job_id,
 commission_pct
 from employees
 where job_id ='SA_REP'
 for update
 order by employee_id;
