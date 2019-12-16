USE `sqlin10mins`;

-- 这一章学习聚集
-- 要注意having 和 where 的区别，having是在数据分组后过虑，而where是在前

-- 求各供应商供应的商品种类数(即 将Prodects以vend_id聚集)
select count(*) from Products group by vend_id;
-- 按 vend_id排序并分组数据
select vend_id,count(*) from Products group by vend_id;

-- Order表中求有两个及以上的订单的客户(having),将Orders以cust_id聚集
-- 使用Having过滤分组，该需求Where不能满足，Where作用于分组前，Having作用于分组后
select cust_id from Orders group by cust_id having count(*)>=2;