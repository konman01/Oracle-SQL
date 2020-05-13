select * from employees;

create index emp_name_idx
on employees(ename);

create index ename_job_hire_idx
on employees(ename, job, hiredate);

select * from employees where ename = 'BLAKE';

select * 
from employees
where ename = 'BLAKE'
and job ='MANAGER'
and hiredate = '05/01/1981';

-- unique index can only be created on the column which are unique
create unique index job_idx
on employees(empno);

-- to drop the index
drop index job_idx;

drop index ename_job_hire_idx;

create index ename_job_hire_idx
on employees(ename, job, hiredate)
compute statistics;


-- to add the add compute statistics to existing 
alter index emp_name_idx
rebuild compute statistics;


select * from stores;

select store_id, count(*)
from stores
group by store_id
order by store_id;

-- delete the duplicate record in the table

-- rowid uniquely identifies a row 
select rowid, store_id, city from stores;

-- delete the duplicate records from the stores table
delete from stores
where rowid not in(select min(rowid)
from stores
group by store_id, city);

-- when we create primary key, then an index will be already created on that
alter table stores
add constraint store_id_pk PRIMARY key(store_id);

-- so such column list already indexed error will be raised
create unique index store_id_idx
on stores(store_id);


