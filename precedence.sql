-- get the empl who has 0 comm and having sal > 1100 and less than 5000 and excludes those having sal 3000
select * from emp
where (comm is null or comm = 0)
and sal > 1100 
and sal < 5000
and sal != 3000;
-- do not use between since it include 1100 and 5000 in the range

-- return those employees that are salesman and that make either 300 dollars comm or greater than 1000 dollar comm
select * from emp
where job = 'SALESMAN'
and (comm = 300 or comm > 1000);