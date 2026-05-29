-- SELECT * from employee;
-- SELECT emp_name,birthday,sal from employee;
-- SELECT emp_name as è]ã∆àıñº, birthday as ê∂îNåéì˙, sal as ããó^, cast(sal * 12 as int) as îNé˚ from employee;
-- SELECT emp_name as è]ã∆àıñº, birthday as ê∂îNåéì˙, sal as ããó^, (sal * 12) :: int as îNé˚ from employee;
-- SELECT 'íSìñé“ ' || emp_name || ' ÇÃíaê∂ì˙ÇÕ ' || birthday || ' Ç≈Ç∑ÅB ' from employee;
-- SELECT emp_name, to_char(birthday, 'DAY, MONTH DD, YYYY') from employee;
-- SELECT emp_name, to_char(sal, '9G999G999D99') from employee;
-- SELECT emp_name, sal, comm, sal + comm from employee; 
-- SELECT emp_name, sal, comm, sal + COALESCE(comm, 0) from employee; 
-- SELECT emp_name, sal, comm, COALESCE((sal * comm) :: int, 1) from employee;
-- SELECT emp_name, 
--     case
--         when gender = 1 then 'íj' 
--                         else 'èó'
--     end
-- from employee;

-- SELECT emp_name, 
--     case gender
--         when 1 then 'íj' 
--                else 'èó'
--     end
-- from employee;

-- SELECT emp_name, birthday, sal, comm, sal + case when comm is null then 0 else comm end from employee;
-- SELECT * from employee order by gender desc, sal;
-- SELECT
--     emp_name,
--     birthday,
--     sal,
--     case 
--         when comm is null then 0
--                         else comm
--     end,
--     sal + 
--     case 
--         when comm is null then 0
--                     else comm
--     end as åéé˚
-- from employee order by 2 desc;
-- SELECT
--     *
-- from employee
-- order by sal
-- limit 3;
-- SELECT
--     prod_name,
--     cost,
--     discount,
--     to_char(cost * 
--     case
--         when discount is null then 1
--                             else discount
--     end,
--     '99G999D99') as äÑà¯âøäi
-- from product
-- -- order by 4 desc;
-- order by äÑà¯âøäi desc;
-- SELECT
--     prod_name,
--     cost,
--     discount,
--     to_char(cost * 
--     case
--         when discount is null then 1
--                             else discount
--     end,
--     '99G999D99') as äÑà¯âøäi
-- from product
-- order by 4 desc
-- limit 3;

-- SELECT
--     emp_name,
--     sal
-- from employee
-- where gender = 2;

-- SELECT
--     emp_name,
--     sal
-- from employee
-- where emp_name = 'à¿ïî çOç]';

-- SELECT
--     emp_name,
--     sal,
--     birthday
-- from employee
-- where birthday >= '1980-01-01';

-- SELECT
--     emp_name,
--     emp_id,
--     sal
-- from employee
-- where emp_id = 2 or emp_id = 4 or emp_id = 7;

-- SELECT
--     emp_name,
--     gender,
--     sal
-- from employee
-- where (sal >= 2000 and sal <=3000) or gender = 2;

-- SELECT
--     emp_name,
--     gender,
--     sal
-- from employee
-- where not((sal >= 2000 and sal <=3000) or gender = 2);

-- SELECT
--     emp_name,
--     sal
-- from employee
-- where sal not between 2000 and 3000
-- order by sal desc;

-- SELECT
--     emp_name,
--     gender,
--     sal
-- from employee
-- where (sal between 2000 and 3000) and gender = 2;

-- SELECT
--     *
-- from customer
-- where address like '%ëÂç„és%';

-- SELECT
--     *
-- from customer
-- where address not like 'ìåãûìs%';

-- SELECT
--     cust_id,
--     cust_name
-- from customer
-- where cust_name like '_ìc%';

-- SELECT
--     cust_id,
--     cust_name
-- from customer
-- where cust_name like '_ìc%éq';

-- SELECT
--     *
-- from employee
-- where comm is not null;

-- SELECT
--     prod_id,
--     prod_name,
--     model_no,
--     cost,
--     discount
-- from product
-- where cost >= 20000;

-- SELECT
--     cust_id,
--     cust_name,
--     fax
-- from customer
-- where fax is null;

-- SELECT
--     cust_id,
--     cust_name,
--     tel
-- from customer
-- where tel not like '03%' and tel not like '06%';

-- SELECT
--     sales_no,
--     psales_no,
--     prod_id,
--     price
-- from sales
-- where psales_no between 110 and 119
-- order by price desc;

-- SELECT
--     prod_id,
--     prod_name,
--     cost * discount
-- from product
-- where prod_id in(102,104,106)
-- order by 3 desc;

-- SELECT
--     cust_id,
--     cust_address,
--     delivery_date
-- from packedsales
-- where cust_address like '%èaíJãÊ%' and delivery_date between '1996-01-01' and '1996-12-31';

-- SELECT
--     count(*),
--     sum(sal)
-- from employee;

-- SELECT
-- --     count(*)
-- -- from employee
-- -- where comm is null;
--     count(*) - count(comm) as count
-- from employee;

-- SELECT
--     dept_id,
--     count(*),
--     sum(sal)
-- from employee
-- group by dept_id
-- order by dept_id;

-- SELECT
--     dept_id,
--     sum(sal)
-- from employee
-- group by dept_id
-- having sum(sal) <= 5000
-- order by dept_id;

-- SELECT
--     gender,
--     count(*)
-- from employee
-- group by gender
-- order by gender;

-- SELECT
--     dept_id,
--     gender,
--     count(*),
--     to_char(avg(sal),'9999D99')
-- from employee
-- group by dept_id, gender
-- order by dept_id, gender

-- SELECT
--     dept_id,
--     gender,
--     count(*),
--     to_char(avg(sal),'9G999D99')
-- from employee
-- group by gender, dept_id
-- order by gender, dept_id;

-- SELECT
--     dept_id,
--     sum(sal),
--     avg(sal),
--     min(sal),
--     max(sal)
-- from employee
-- group by dept_id
-- having sum(sal) <= 5000
-- order by dept_id;

