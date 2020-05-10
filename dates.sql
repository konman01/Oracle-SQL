-- Numeric and Data Functions

-- Numeric functions

-- round up data
select round(107.088, 2) from dual; -- 107.19

select round(107.088) from dual; -- 107

-- truncate function, truncate just removes the digits, it does not round up the value
select trunc(107.12345678) from dual; --107



-- Date function 

select sysdate from dual; --05/09/2020

select systimestamp from dual; -- 09-MAY-20 05.50.38.154349 AM +00:00

-- add months to the date
select add_months('11/17/2020', 2) from dual; --  01/17/2021

select add_months(sysdate, -3) from dual; --02/09/2020

-- months between, gives month diff between 2 dates
select round(months_between(sysdate, '11/17/2019'), 2) from dual; -- 5.75

-- trunc on date
select trunc(systimestamp) from dual; --05/09/2020

select trunc(sysdate, 'YEAR') from dual; -- gives first date for the year in sysdate


-- get the start of the month for the employees whose hiredate is 01/01/1982
select ename, hiredate, trunc(hiredate, 'MONTH')
from emp
where trunc(hiredate, 'YEAR') = '01/01/1982';



-- convert dates to string
select concat('Todays date is ', to_char(sysdate, 'DD-MON-YEAR')) from dual;

select to_char(sysdate, 'ddth "of" month, yyyy') from dual;

-- convert number
select to_char(sal, '$99,999.99') from emp;


-- convert string to date
select to_date('01-JAN-20', 'DD-MON-RR') from dual;







