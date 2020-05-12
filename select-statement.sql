SELECT JOB
FROM EMP;


SELECT JOB, ENAME
FROM EMP;



SELECT JOB, ENAME
FROM EMP;



SELECT DNAME, LOC from dept;


-- Get Distinct Jobs from emp table
SELECT distinct job from emp;


-- get records whose job is 'MANAGER'
SELECT *
FROM EMP
WHERE job = 'MANAGER'

 --All these 4 conditions will be applied to each and every rown in the table


-- Get records whose JOB is 'SALESMAN', sal is 1600, comm is 300 and is from department number 30
SELECT *
FROM EMP
WHERE JOB = 'SALESMAN'
AND SAL = 1600
AND COMM = 300
AND DEPTNO = 30


-- get the records in the emp table whose job type is not the salesman
SELECT * FROM EMP
WHERE JOB != 'SALESMAN'

-- get the salesman whose sal is 1500
SELECT * FROM EMP
WHERE JOB = 'SALESMAN'
AND SAL = 1500


-- get the records whose are not salesman and the sal is less thabn 2500
SELECT * FROM EMP
WHERE JOB != 'SALESMAN'
AND SAL < 2500

--get the records whose are not salesman and the sal is less than or equal to 3000
SELECT * FROM EMP
WHERE JOB != 'SALESMAN'
AND SAL <= 3000

--get the records whose are not salesman and the sal is greater thab  3000
SELECT * FROM EMP
WHERE JOB != 'SALESMAN'
AND SAL > 3000


-- Write a query that returns those employees who have a commission greater than their salary 
SELECT * FROM EMP
WHERE COMM > SAL


-- Get all employees that are not managers and have a salary greater than 2500 and also work in department no# 20 
SELECT * FROM EMP
WHERE JOB != 'MANAGER'
AND SAL > 2500
AND DEPTNO = 20

SELECT * FROM EMP
WHERE JOB = 'CLERK'
OR JOB = 'SALESMAN'


-- Get the names of those employees that are not managers nor salesmen and have a salary greater than or equal to 2000 
SELECT ENAME FROM EMP
WHERE JOB != 'MANAGER'
AND JOB != 'SALESMAN'
AND SAL >= 2000



-- Solution to problem from Lecture 7 
SELECT ename, hiredate FROM EMP
WHERE DEPTNO  = 20 
OR DEPTNO = 30

-- get teh ename and hiredate of the emp who are from dept 20 or 30
SELECT ename, hiredate FROM EMP
WHERE DEPTNO IN (20,30)

-- get teh ename and hiredate of the emp whose names are 'FORD', 'SMITH', 'ALLEN', 'WARD', 'MARTIN'
SELECT ename, hiredate FROM EMP
WHERE ENAME IN ('FORD', 'SMITH', 'ALLEN', 'WARD', 'MARTIN')

-- get teh ename and hiredate of the emp whose names are not 'FORD', 'SMITH', 'ALLEN', 'WARD', 'MARTIN'
SELECT ename, hiredate FROM EMP
WHERE ENAME NOT IN ('FORD', 'SMITH', 'ALLEN', 'WARD', 'MARTIN')

-- get the recs from the emp who are hired between '05/01/1981' to '12/09/1982'
SELECT * from emp
where hiredate between '05/01/1981' and '12/09/1982' -- these two dates are inclusive 


SELECT * from emp
where SAL between 1000 AND 2000 -- 1000 and 2000 are inclusive


SELECT * from emp
where SAL NOT BETWEEN 950 AND 1600 ---- 950 and 1600 are inclusive to the condition

SELECT * FROM EMP
WHERE COMM IS NOT NULL;


SELECT * FROM EMP WHERE MGR IS NULL



SELECT * FROM EMP 
WHERE JOB LIKE 'S%'


SELECT * FROM EMP 
WHERE JOB LIKE '%GER'


-- ORDER BY 
SELECT *
FROM emp
ORDER BY ENAME


SELECT *
FROM emp
ORDER BY SAL


-- ORDER BY descending order
SELECT *
FROM emp
ORDER BY SAL DESC


-- ORDER BY ascending order
SELECT *
FROM emp
ORDER BY SAL ASC


SELECT DEPTNO, SAL, ENAME
FROM EMP
ORDER BY DEPTNO, SAL


SELECT *
FROM EMP
ORDER BY DEPTNO, SAL

