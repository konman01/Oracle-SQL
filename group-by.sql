-- Grouping Function
-- Multiple input one output

-- avrg sal of perticular Job Type
select job, avg(sal) from emp
group by job;

--  min sal in every job kind
select min(sal), job
from emp
group by job;

-- max sal in evry job kind
select max(sal), job
from emp
group by job;


-- Get the records perticular to a job type having more than 2 recs
select count(*), job
from emp
group by job
having count(*) > 2
order by count(*);
-- grouping function cannot be used at the where clause, we have to use the having clause for grouping function


-- get the department number having more than 3 working members
select deptno
from emp
group by deptno
having count(*) > 3;


-- get count of members perticular to job
select job, count(*)
from emp
group by job;


-- get the no of people working in same job type and dept number
select deptno, job, count(*)
from emp
group by job, deptno
order by job, deptno;

