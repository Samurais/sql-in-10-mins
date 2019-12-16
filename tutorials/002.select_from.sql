USE `sqlin10mins`;

-- 2-2 检索当个列
select prod_name from Products;

-- 2-3 检索多个列
select prod_id , prod_name ,prod_price from Products;

-- 2-4 检索多个列
select * from Products;

-- 2-5	检索不同的值(返回互不相同的元素)
 select DISTINCT vend_id from Products;


-- 多行注释
/*
 * 
 */

-- 检索前5行
select prod_name from Products LIMIT 5;


-- 检索从第6行开始的连续4行
select prod_name from Products LIMIT 4 OFFSET 5;
-- 或简写为：
select prod_name from Products LIMIT 4,5;

