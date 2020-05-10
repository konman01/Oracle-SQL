-- exists

select * from emp 
where exists(select 'Hello' from dual);

select * 
from emp
where not exists(select 'hello' from dual);


select *
from emp
where exists(select null from dual);


-- for every row, the exists condition should be met
select * 
from emp
where exists(select * from emp where job = 'MANAGER');

-- for every row of the outer query, the exists query condition will be executed
select *
from dept d
where exists (select * from emp e where e.deptno = d.deptno );

-- correlated query
select *
from dept d
where not exists (select * from emp e where e.deptno = d.deptno )
or loc = 'CHICAGO';

















