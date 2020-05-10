-- Alliasing column name
select ename as "Employee Name",
job as title 
from emp;

-- Concatinationg the column name
select 'Hello, My name is ' || ename as "Intro"
from emp;

-- concate
select ename || ' makes ' || sal || ' per month '
from emp;



