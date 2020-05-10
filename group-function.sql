-- Grouping Functions
-- Many Inputs one output - Grouping function

-- max sal getting in emo
select max(sal) as max_sal from emp;

-- Min sal getting in emp
select min(sal) as min_sal from emp;

-- sum of all the sal in emp table
select sum(sal) as sum_of sal from emp;

-- get the max salary of the manager
select max(sal) as "Max sal of a Manager"
from emp
where job = upper('manager');


select avg(sal)
from emp;

-- number of enames in emp table
select count(ename)
from emp;

-- to get the number of recs in the emp table
select count(*)
from emp;

-- grouping function get the data having data and neglects the null values
select count(comm)
from emp;

-- Math operators in sel
select sum(sal)/count(ename) as comuputed_avg from emp;


select sum(sal) as sum, avg(sal) as avg, max(sal) as max, min(sal) as min, count(*) as "Num of recs"
from emp;
--SUM	        AVG	                                MAX	    MIN	    Num of recs
--29025	2073.21428571428571428571428571428571429	5000	800	        14
