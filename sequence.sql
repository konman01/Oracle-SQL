-- sequence

create sequence seq;


create sequence product_seq
MINVALUE 1
MAXVALUE 99999999999999
start with 100       -- Sequece start with value 100
increment by 10
cache 20;    -- will be value with increment of 10 -- 100, 110, 120, 130

select seq.nextval from dual;


select product_seq.nextval from dual;

alter sequence product_seq
nocache;

insert into products (product_id, product_name)
values(product_seq.nextval, 'Hello');