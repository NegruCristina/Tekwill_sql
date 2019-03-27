select *
from employees;


desc dictionary

select *
from dictionary;

select*
from USER_DIM_CHILD_OF;

select *
from dictionary
where table_name ='USER_OBJECTS';

SELECT*
FROM USER_OBJECTS;


SELECT*
FROM ALL_OBJECTS;

SELECT*
FROM ALL_OBJECTS
WHERE OWNER= 'ORA32';

select *
from ALL_ERRORS;

select *
from ALL_USERS;


select table_name
from dictionary
where lower(comments) like '%columns%';

dESc USER_TAB_COLUMNS;

select*
from USER_TAB_COLUMNS;


select*
from user_constraints;

select*
from user_cons_columns;


select*
from all_col_comments;

select*
from user_col_comments;

select*
from all_tables
order by 2;