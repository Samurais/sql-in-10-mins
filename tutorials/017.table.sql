USE `sqlin10mins`;

-- 创建 、删除、重命名表

-- 创建表 ，可以指定默认值
create table Products2
(
  prod_id    char(10)      NOT NULL ,
  vend_id    char(10)      NOT NULL ,
  prod_name  char(255)     NOT NULL ,
  prod_price decimal(8,2)  NOT NULL default 1.00,
  prod_desc  text          NULL 
);

-- 增加新字段
alter table Products2 add prod_type char(10) NOT NULL;

-- 重命名表
rename table Products2 to Products2Renamed;

-- 删除表
drop table Products2Renamed;

-- 复制表：
-- CREATE TABLE 新表 SELECT * FROM 旧表