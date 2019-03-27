select sum(salary) as Total_salary,
min(salary) as Min_salary,
max(salary) as Max_salary,
avg(salary) as Avg_salary, 
count(employee_id) as count_employee_id
from employees;






select count(distinct job_id) job_id,
count(job_id) job_id1
from employees;



select count(distinct salary) count0,
count(salary) count1
from employees;



select sum(distinct salary) salary,
sum(salary) salary1
from employees;




select count(distinct salary) salary,
count(salary) salary1,
sum(distinct salary) salary,
sum(salary) salary1
from employees;





select count(distinct salary) salary,
count(salary) salary1,
sum(distinct salary) salary,
sum(salary) salary1
from employees
where job_id ='SA_REP';


Select min(hire_date),
max(hire_date)
from employees
where job_id ='SA_REP';




Select count(*) count_all,
count(nvl(commission_pct,0))as count1,
count(employee_id) as count2,
count(commission_pct)as count3
from employees;



Select department_id as deparment_id1,
avg(salary)
from employees
group by department_id;



Select nvl(department_id,10) as t1,
round(avg(salary),2)
from employees
group by nvl(department_id,10);




Select first_name,
avg(salary)
from employees
group by first_name;







Select department_id,
job_id,
manager_id,
avg(salary),
min(hire_date),
max(salary)
from employees
where department_id between 50and 100
group by department_id, job_id,manager_id
order by department_id;



Select department_id,
job_id,
manager_id,
avg(salary),
min(hire_date),
max(salary)
from employees
where department_id between 50and 100
group by department_id, job_id,manager_id
having max(salary)>=10000
order by department_id;



Select department_id,
job_id,
manager_id,
avg(salary),
min(hire_date),
max(salary)
from employees
where department_id between 50 and 100
and salary>=10000
group by department_id, job_id,manager_id
order by department_id;




