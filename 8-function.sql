-- Сдת��д���� UPPER
select vend_name ,UPPER(vend_name) as vend_name_upcase from Vendors;
--����2012������ж���,yearҲ����
select order_num from Orders where YEAR(order_date)=2012;
