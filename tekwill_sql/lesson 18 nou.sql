create user test_user_usr
identified by Test1231;

grant create view 
to test_user_usr;

create role Test_Manager_1;

grant create table
to Test_Manager_1;

grant Test_Manager_1 to test_user_usr;


alter user test_user_usr
identified by test124;

select*
from ora43.employees;



grant select
on employees
to ora43;

select*
from ora33.employees;