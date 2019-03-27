insert into (select l.location_id,
                     l.city,
                     l.country_id
            from locations l
            join countries c 
            on l.country_id=c.country_id
            join regions 
            using (region_id)
            where region_name='Europe')
values (3300, 'Cardiff', 'UK');

select*
from locations;



--nu se face modificari in mai multe tabele odata.
insert into (select l.location_id,
                     l.city,
                     l.country_id,
                     c.country_id,
                     c.country_name
            from locations l
            join countries c 
            on l.country_id=c.country_id
            join regions 
            using (region_id)
            where region_name='Europe')
values (3300, 'Cardiff', 'UK', 'MD' , 'Moldova');


select*
from countries;


insert into (select location_id,
                     city,
                     country_id
            from locations 
            where country_id    in 
            (select country_id
            from countries  
            natural join regions 
            where region_name='Europe')
    with check option)
values (3600, 'WASAON', 'US');



CREATE TABLE EMPLOYEES29 AS
SELECT*
FROM EMPLOYEES;

ALTER TABLE EMPLOYEES29
ADD (DEPARTMENT_NAME VARCHAR2(25));

UPDATE EMPLOYEES29 a
SET DEPARTMENT_NAME = (SELECT DEPARTMENT_NAME
                         FROM DEPARTMENTS b
                         WHERE a.department_id=b.department_id);
                         
select*
from EMPLOYEES29;

delete from EMPLOYEES29 e
where employee_id in (select employee_id
                   from job_history j
                   where e.employee_id=j.employee_id );

select*
from job_history;




select*
from job_history;