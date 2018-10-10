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