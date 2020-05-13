-- Creating view or replace is exists
create or replace view manager_v
as select * 
from employees
where job = 'MANAGER'

-- what ever the query used for this view will be executed
select * from manager_v;

-- to get details about the views
select * from user_objects where object_type = 'VIEW';

--
select * from all_objects
where object_type = 'VIEW'
and owner = 'KONMAN01';

--drop the view
drop view manager_v;

-- create a view having the employees richer in each department
create view rich_employees_v as
select a.* 
from employees a, (select store_id, max(sal) sal
                 from employees
                 group by store_id) b
where a.store_id = b.store_id
and a.sal = b.sal;

select * from rich_employees_v;