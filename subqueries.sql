-- subqueries

select * from dept
where deptno < (select deptno from dept where deptno = 30)
and dname = 'ACCOUNTING';

-- get the records from emp who works in CHOCAGO
select * from emp 
where deptno = (select deptno from dept where loc = 'CHICAGO');
-- nested part of the  queries will be executed first and the result will be passed to the outer query

select * from emp
where deptno in (select deptno from dept where deptno in(10,20));



-- output of the inner query will be considered as new table
select * from (select * from dept);

select ename, job from (select * from emp);

select ename, job from (select job, ename from emp);





-- make all the employees to have the president job title
select ename, (select job from emp where job = 'PRESIDENT')
from emp;
-- subquery in the select statement should return only one value












