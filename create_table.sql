-- create table 


create table stores(
    store_id number not null, -- this column cannot be null, 
    city varchar(50)
);


-- Insert records into the table


insert into stores(store_id, city)
values(1, 'San Francisco');

insert into stores(store_id, city)
values(2, 'New York City');


-- Insert multiple records at the same time

insert all 
into stores (store_id, city) values(3, 'Chicago')
into stores (store_id, city) values(4, 'Philadelphia')
into stores (store_id, city) values(5, 'Boston')
into stores (store_id, city) values(6, 'Seattle')
select * from dual;


-- creating table with primary key constrain

create table products(
    product_id number not null,
    name varchar(50),
    product_cost number(5, 2), -- product cost is of 5 digits out of it 2 for decimals
    product_retail number (5, 2),     -- product cost is of 5 digits out of it 2 for decimals
    product_type varchar(10),
    store_id number not null,
    constraint product_pk primary key (product_id)        -- defining a primary key constrain by name product_pk for product_id column
                                                          -- primary key column, should be unique and not null
);


insert into products(product_id, name, product_cost, product_retail, product_type, store_id) 
    values(1001, 'Colgate Toothpaste', 2.25, 5.47, 'hygiene', 2)

insert into products(product_id, name, product_cost, product_retail, product_type, store_id) 
    values(1002, 'Colgate Toothpaste', 2.25, 5.47, 'hygiene', 2)

insert into products(product_id, name, product_cost, product_retail, product_type, store_id) 
values(1003, 'Listerine Mouthwash', 1.75, 4.81, 'hygiene', 3);


-- if there is any problem with any single row, then no data from the query executed
INSERT ALL
    INTO products (product_id, name, product_cost, product_retail, product_type, store_id )
        VALUES (1004, 'T-Shirt', 1.75, 7.77, 'Clothing', 2)
    INTO products (product_id, name, product_cost, product_retail, product_type, store_id )
        VALUES (1005, 'T-Shirt', 1.65, 7.85, 'Clothing', 2)
    INTO products (product_id, name, product_cost, product_retail, product_type, store_id )
        VALUES (1006, 'T-Shirt', 1.73, 7.80, 'Clothing', 3)
    INTO products (product_id, name, product_cost, product_retail, product_type, store_id )
        VALUES (1007, 'Shorts', 0.73, 5.60, 'Clothing', 3)
    INTO products (product_id, name, product_cost, product_retail, product_type, store_id )
        VALUES (1008, 'Dress Shoes', 17.85, 87.67, 'Clothing', 2)
    INTO products (product_id, name, product_cost, product_retail, product_type, store_id )
        VALUES (1009, 'Garden Chair', 12.01, 27.87, 'Home & Gar', 2)
    INTO products (product_id, name, product_cost, product_retail, product_type, store_id )
        VALUES (1010, 'Grass Fertilizer', 3.20, 8.70, 'Home & Gar', 2)
SELECT * FROM DUAL; 


-- insert records into multiple table
CREATE table dest_tbl_1
(
    id number,
    name varchar2(50),
    date_of date
);


CREATE table dest_tbl_2
(
    id number,
    name varchar2(50),
    date_of date
);


CREATE table dest_tbl_3
(
    id number,
    name varchar2(50),
    date_of date
);


INSERT ALL
    INTO dest_tbl_1 (id, name, date_of) values (EMPNO, ENAME, HIREDATE) -- 14 rows inserted from emp
    INTO dest_tbl_2 (id, name, date_of) values (EMPNO, ENAME, HIREDATE) -- 14 rows inserted from emp
    INTO dest_tbl_3 (id, name, date_of) values (EMPNO, ENAME, HIREDATE) -- 14 rows inserted from emp
SELECT empno, ename, hiredate
FROM emp -- this table contains 14 rows


-- conditional multi table insert
INSERT ALL
WHEN sal <= 1500 THEN
    INTO dest_tbl_1 (id, name, date_of) values (EMPNO, ENAME, HIREDATE) -- only recs with sal less thab 1500 will be inserted into dest_tbl_1 table
WHEN sal BETWEEN 1501 AND 2500 THEN 
    INTO dest_tbl_2 (id, name, date_of) values (EMPNO, ENAME, HIREDATE) --only recs with sal between 1501 and 2500 will be inserted into dest_tbl_1 table
WHEN sal  > 2500 THEN
    INTO dest_tbl_3 (id, name, date_of) values (EMPNO, ENAME, HIREDATE) -- only recs with sal greater than 1500 will be inserted into dest_tbl_1 table
SELECT empno, ename, hiredate, sal
FROM emp;


-- alter table
insert into products values(1011, '', 4.00, 8.00, 'Clothing', 3);

-- alter the products table
-- alter one column
alter table products 
modify name varchar2(50) not null;

-- alter multiple column
alter table products 
modify (product_cost Number(5, 2) not null,
        product_retail Number(5, 2) not null);
        
-- alter column name
alter table products
rename column name to product_name;



-- create a new table from another table
create table employees as
select empno, ename, job, hiredate, sal, comm
from emp; -- all the constraints of the column from emp table are used to create the employees table


alter table employees
add store_id number;

UPDATE employees
SET store_id = 3
WHERE ename in ('KING', 'BLAKE', 'CLARK');


UPDATE employees
SET store_id = 2
WHERE job = 'SALESMAN';


UPDATE employees
SET store_id = 4
WHERE job = 'CLERK';



UPDATE employees
SET store_id = 4
WHERE job = 'ANALYST';


UPDATE employees
SET store_id = 3
WHERE ename = 'JONES';

ALTER TABLE employees
    MODIFY store_id number not null;


select * from employees;


-- delete a record from table

delete from products where product_id = 1011;



-- describe objects in a database
describe products;






select * from dest_tbl_1;



select * from products;




select * from stores;












