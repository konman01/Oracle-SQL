-- Single row functions
-- then functions will be used for each rown in a table

-- concat two strings
select concat('My name is ', ename) as sentence 
from emp;

-- converts the string to upper case
select upper('hello') from dual;


select 'hello' from dual;


-- get the description of a table
describe dept;

-- we can use the multiple functions
select upper(concat(lower(ename), ' is a name')) from emp;

select concat(concat(concat(lower(ename), upper(' is the name ')), ' and their job is: '), upper(job)) from emp;




-- single row function in filtering conditions
select * from emp
where job = upper('manager');


-- capitalize every first letter in a sentence
select initcap('hello, my name is Manjunatha') from dual; 

-- get the length of the string including spaces
select length('Hello my name is Manjunatha') from dual;


select ename, length(ename) 
from emp
where length(ename) = 6;

-- Substring function
select 'hello', substr('hello', 2, 3) from dual; -- from 2nd character, take 3 chracters

select 'Manjunatha', substr('Manjunatha', 2) from dual; -- from 2 letter, take all


-- add chracter patternb to left of the coulmn
select lpad(ename, 12, '$') from emp; -- add chracter $ to the coloumn to the left untill the number of the chracters in 12

select length(lpad(ename, 12, '$')) from emp; 

-- add chracter patternb to right of the coulmn data
select rpad(ename, 12, '&') from emp; -- add character & to the right the column data untill the number of the character is 12

select rpad(ename, 12) from emp; -- if the pattern is not defined, then space will be added


-- trim the column data
select ltrim('hhhelhlo', 'h') from dual;

select rtrim('hhhelhloooo', 'o') from dual;



-- NVL function

-- makes null col 0
select ename, job, sal, nvl(comm, 0)
from emp
where empno in (7839, 7698, 7566, 7654);


select ename, job, sal, nvl(to_char(comm), 'No data found')
from emp;

-- null if
-- if the length of the ename is 5, then make that cloumn val null
select ename, length(ename), nullif(length(ename), 5)
from emp;


-- if the value is 5, make it "length is 5"
select ename, length(ename), nvl(to_char(nullif(length(ename), 5)), 'Length is 5')
from emp;







