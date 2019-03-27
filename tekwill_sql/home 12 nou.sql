--1)
select table_name
from user_tables;


select table_name
from tabs;

--2)

select table_name,
owner
from all_tables
where owner <> 'ORA32';

--3)

select column_name,
data_type,
data_length,
data_precision  as "precision",
data_scale as "scale"
from user_tab_columns
where table_name = upper ('&tab_name');


--4)
select b.column_name,
b.constraint_name,
a.constraint_type,
a.search_condition,
a.status
from user_constraints a
join user_cons_columns b
on a.table_name=b.table_name
and a.constraint_name=b.constraint_name
where a.table_name = upper ('&tab_name');

--5)
comment on table departments
is 'Company department information including name, code and location';

select*
from user_col_comments;

--6)

drop table dept2;

CREATE TABLE DEPT
(ID   NUMBER(7) NOT NULL  CONSTRAINT PRIM_1 PRIMARY KEY,
NAME              VARCHAR2(25)
);

CREATE TABLE EMP
(ID NUMBER(7),
LAST_NAME  VARCHAR2(25),
FIRST_NAME VARCHAR2(25),
DEPT_ID NUMBER (7) CONSTRAINT FK_1 REFERENCEs DEPT(ID)
);
    
    
--7_
select object_name "table_name"
FROM USER_OBJECTS
where object_name in ('DEPT', 'EMP'); 

--8)

select constraint_name,
constraint_type
from user_constraints
where table_name in ('DEPT', 'EMP');

--9)

select object_name,
object_type
from user_objects
where object_name in ('DEPT', 'EMP');
