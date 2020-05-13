-- union gets the unique record from table emp and employees
select ename, job
from emp
union 
select ename, job
from employees;

-- union all
select ename, job
from emp
union all
select ename, job
from employees;


-- minus
select * from employees
minus
select * from rich_employees_v; -- records present in rich_employees_v will be removed from employees table













