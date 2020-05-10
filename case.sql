-- Case

select ename, job, (case job
when 'PRESIDENT' then 'bigshot'
when 'MANAGER' then 'Then desides your pay'
when 'ANALYST' then 'Good at Math'
when 'CLERK' then 'hard working'
else 'no comment'
end) as comments
from emp;

select ename, job, (case 
                   when sal > 3000 then 'Rich kids'
                   else 'Need to earn more'
                   end) as status
from emp;

