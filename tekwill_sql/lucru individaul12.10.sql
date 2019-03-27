select to_char(hire_date,'MM.YYYY'),
max(salary)
from employees
where PHONE_NUMBER like ('650%')
group by hire_date, salary;


select job_id,
count(job_id)
from employees
group by job_id;





select substr(initcap(job_id),1,2) || lower(substr(initcap(job_id),3)) as low_job,
count(job_id)
from employees
group by job_id;


select hire_date,
count(hire_date)
from employees
group by hire_date
---having hire_date > 1
order by hire_date desc;


select hire_date,
count(hire_date)
from employees
group by hire_date
having count(hire_date)>1
order by hire_date desc;



select job_id,
count(job_id)
from employees
where job_id in ('SA_MAN','ST_MAN','MK_MAN')
group by job_id;


select job_id,
count(job_id)
from employees
where job_id in ('SA_MAN','ST_MAN','MK_MAN')
group by job_id
having count(job_id)>1;


select hire_date,
count(hire_date)
from employees
group by hire_date
having count(hire_date)>1
order by hire_date desc;




select hire_date,
count(hire_date)
from employees
group by hire_date
order by hire_date desc;



select job_id,
count(job_id)
from employees
where job_id in ('SA_MAN','ST_MAN','MK_MAN')
group by job_id
having count(job_id)>1;

select nvl(to_char(commission_pct,'0.99'),'Persoane fara comision'),
--nvl(commission_pct,0),
count(commission_pct)
from employees
group by commission_pct;


select commission_pct,
count(commission_pct)
from employees
group by commission_pct;



select employee_id,
job_id,
round(end_date-start_date) week
from job_history
order by employee_id;



select employee_id,
count(employee_id)
from job_history
group by employee_id;



select employee_id,
job_id,
round(end_date-start_date) week
from job_history
order by employee_id;




select employee_id,
count(employee_id)
from job_history
group by employee_id
having count(employee_id)>1;


select*
from job_history;

select
employee_id,
count(employee_id)
from job_history
group by employee_id
having count(employee_id)>1;


select *
from employees
where employee_id in (101,176,200);
