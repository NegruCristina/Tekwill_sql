select *
from employees, departments;


create sequence dept_deptid_seq
start with 280
increment by 10
maxvalue 9999
nocache
nocycle;

select dept_deptid_seq.CurrVal,
     dept_deptid_seq.NextVal
from dual;


drop sequence dept_deptid_seq;


create sequence dept_deptid_seq
start with 270
increment by 10
nocache
nocycle;

select*
from departments;

insert into departments
values (dept_deptid_seq.NextVal,'iiicc',205,1700);



create sequence id_seq 
start with 1
increment by 1
nocache
nocycle;

create table Test_sequence
(id number default id_seq.Nextval not null,
name varchar2(5),
description varchar2(100));

insert into Test_sequence(name, description)
values('Name3','description3');

select*
from test_sequence;

desc dept_deptid_seq;

select*
from user_sequences;

create public synonym synonym_12
for employees;

select*
from synonym_12;

drop public synonym synonym_12;


select*
from all_synonyms
where table_owner ='ora32';



select*
from employees
where email ='BERNST';


select*
from employees a
join departments b
on  a.employee_id=b.manager_id;

select*
from employees a
join departments b
on  a.department_id=b.department_id;


create index test_index
on employees (hire_date);



desc employees;

create table test_table_index 
(EMPLOYEE_ID   NUMBER(6)  primary key
using index(create index test_indexe_employee on test_table_index (EMPLOYEE_ID)),
FIRST_NAME              VARCHAR2(20), 
LAST_NAME       VARCHAR2(25) NOT NULL,
EMAIL           VARCHAR2(25) NOT NULL,
PHONE_NUMBER            VARCHAR2(20));

select*
from user_indexes
where lower(table_name)=lower( 'TEST_TABLE_INDEX');


create index upper_test_table_index
on TEST_TABLE_INDEX(upper(last_name));

select *
from TEST_TABLE_INDEX
where upper(last_name)='Kochhar';


select*
from user_ind_columns
where table_name= upper( 'TEST_TABLE_INDEX');

