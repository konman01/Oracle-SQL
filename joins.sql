-- Joining tables


select a.ename, a.job, a.sal
from emp a, dept b
where a.deptno = b.deptno
and b.deptno = 20;


-- get the ename, sal and job of employees who are Manager and Clerk
select a.ename, a.job, a.sal
from emp a, dept b
where a.deptno = b.deptno
and a.job in ('MANAGER', 'CLERK')



select a.ename, a.job, a.sal
from (select * from emp where job in ('MANAGER', 'CLERK')) a, (select * from dept) b
where a.deptno = b.deptno;


select a.ename, a.job, a.sal, b.loc
from (select * from emp where job in ('MANAGER', 'CLERK')) a, (select * from dept where loc = 'DALLAS') b
where a.deptno = b.deptno;



-- inner join

select *
from emp inner join dept
on emp.deptno = dept.deptno;


-- right join -- get all the records on right table on matched records on left based on condition mentioned in ON, also called as right outer join
select *
from emp right join dept
on emp.deptno = dept.deptno;

-- left join -- get all the records on left table and matched records on left based on conditions mentioned in ON, also called as left outer join
select *
from emp left join dept
on emp.deptno = dept.deptno;

-- full outer join - get all the records from all the table
select *
from emp full outer join dept
on emp.deptno = dept.deptno;


select * 
from (select * from emp where job = 'SALESMAN') e right join (select * from dept) d
on d.deptno = e.deptno;


select *
from (select * from dept) d  left outer join (select * from emp where job = 'SALESMAN') e
on e.deptno = d.deptno;














