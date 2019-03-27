--1)
 create table dept1 
 (
 ID NUMBER(7) PRIMARY KEY,
 NAME VARCHAR2(25)
 );
 DESC DEPT1;
 
 --2)
 
 CREATE SEQUENCE DEPT_ID_SEQ
 START WITH 200
 INCREMENT BY 10
 MAXVALUE 1000;
 
 --3)
 insert into dept1(id,
 name)
 values (dept_id_seq.nextval,
 'Education');
 
  insert into dept1(id,
 name)
 values (dept_id_seq.nextval,'Administration');
 
 select*
 from dept1;
 
 alter table dept1
 drop id=220;
 
 --4)
 select *
 from user_sequences ;
 
 --5)
 create synonym emp1
 for employees;
 
 
 select*
 from user_synonyms;
 
 --6)
 drop synonym emp1;
 
 --7)
 create index in_ind
 on dept1(name);
 
 --8)
 create table sales_dept
 (team_id  number(3) primary key using index    
              (create index sales_pk_idx
              on sales_dept(team_id)),
location  varchar2 (30));
select*
from user_indexes
where table_name= 'SALES_DEPT';

--9)
drop TABLE SALES_DEPT;
DROP TABLE EMP1; 
DROP SEQUENCE DEPT_ID_SEQ;

 
 