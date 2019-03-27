create table my_first_table
(deptno number(2),
dname varchar(14),
loc varchar(13),
create_date date default sysdate);

insert into my_first_table_11--(DEPTNO,dname, loc)
--values (1, 'Test Depart', 'Unde Location',sysdate)
--values (2, 'Test Depart', 'Unde Location')
values (1, 'Test Depart', 'Unde Location','10-OCT-18');

select *
from my_first_table_11;


create table my_first_table_11
(deptno number(2),
dname varchar(14),
loc varchar(13),
create_date timestamp default(localtimestamp));

create table HR_table
(employee_id number(6) constraint emp_employee_id primary key,
first_name varchar(50),
last_name varchar (50),
job_id varchar(10));


select*
from hr_table;


insert into hr_table
values (1, 'Helen', 'Jog','IT_PROG');


SELECT*
FROM EMPLOYEES;


create table HR_table_1
(employee_id number(6) constraint emp_employee_id primary key,
first_name varchar(80),
EMAIL VARCHAR2(70) constraint HR_EMAIL1_1 NOT NULL, --Constraint HR_EMAIL_UK1 UNIQUE,
last_name varchar (80));


create table HR_table_1
(employee_id number(6)primary key,
first_name varchar(50),
email varchar(80) not null unique,
last_name varchar (50),
job_id varchar(10));



CREATE TABLE My_First_Table_1
        (deptno Number(2) 
        ,dname VARCHAR2(14)
        ,loc VARCHAR2(13)
        ,create_date timestamp default (localtimestamp));
        
Insert into My_First_Table--(deptno,dname,loc)
--Values (1,'Test Departmen','Unde loca',sysdate);
Values (1,'Test Departmen','Unde loca','10-OCT-18');
--Values (2,'Test Departmen','Unde location'); 


Insert into My_First_Table_1(deptno,dname,loc)
Values (3,'Test Departmen','Unde loca');

Select *
from My_First_Table;

Select *
from My_First_Table_1;

desc My_First_Table;

Select sysdate,localtimestamp from dual;


Select * 
From employees;

Create Table Hr_Table (employee_id number(6) Constraint EMP_employee_id Primary Key
                      ,first_name Varchar2(50)
                      ,last_name Varchar2(50));


Select * 
from Hr_Table;

Insert into Hr_Table(employee_id,first_name,last_name)
Values(2,'sdjlk','jksldzx');


Select count(distinct email)
From employees;


Create Table Hr_Table_1 (employee_id number(6) Constraint EMP_PK_Empl Primary Key
                        ,first_name Varchar2(50)
                        ,email Varchar2(50) Constraint EMP_NN_email not null 
                                            Constraint EMP_UN_email unique
                        ,last_name Varchar2(50)
                      );
                      
                      
Create Table Hr_Table_2 (employee_id number(6) 
                        ,first_name Varchar2(50)
                        ,email Varchar2(50) not null
                        ,last_name Varchar2(50) not null
                        ,Constraint EMP_PK_Empl_1 Primary Key (employee_id)
                        ,Constraint EMP_UN_email_1 unique (email)
                      ); 
                      
Insert into employees
values(210,'Lex','De Haan','sdfgh','515.123.4569','13-JAN-09','AD_VP',0,null,100,90);

Select *
From employees;

Create Table Hr_Table_3 (employee_id number(6) 
                        ,first_name Varchar2(50)
                        ,email Varchar2(50) not null
                        ,last_name Varchar2(50) not null
                        ,department_id  number(6) 
                        ,constraint Test_FK_1 Foreign Key (department_id )References departments(department_id)
                        ,Constraint EMP_PK_Empl_2 Primary Key (employee_id)
                        ,Constraint EMP_UN_email_2 unique (email)
                      ); 
                      

Create Table Hr_Table_4 (employee_id number(6) 
                        ,first_name Varchar2(50)
                        ,email Varchar2(50) not null
                        ,last_name Varchar2(50) not null
                        ,department_id  number(6) constraint Test_FK_2 References departments(department_id)
                        ,Constraint EMP_PK_Empl_3 Primary Key (employee_id)
                        ,Constraint EMP_UN_email_3 unique (email)
                      ); 
                      
                      
Create table employees_old
As
Select * 
from employees;






CREATE TABLE dept80
as select *
from departments;

alter table dept80
add job_id varchar2(15);

select *
from dept80;


desc dept80;


alter table dept80
modify department_name varchar(50);


select max(length(department_name))
from dept80;

alter table dept80
modify department_name varchar(19);



alter table dept80
drop (location_id);


select *
from dept80;

alter table dept80
set unused column job_id;

alter table dept80
set unused (manager_id,department_name);

drop table dept80;

select *
from dept80;
