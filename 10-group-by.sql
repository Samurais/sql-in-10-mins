--��һ��ѧϰ�ۼ�
--Ҫע��having �� where ������having�������ݷ������ǣ���where����ǰ

-- �����Ӧ�̹�Ӧ����Ʒ������ ����Prodects��vend_id�ۼ�
select count(*) from Products group by vend_id;
select vend_id,count(*) from Products group by vend_id;

--Order�����������������ϵĶ����Ŀͻ�(having),��Orders��cust_id�ۼ�
 select cust_id from Orders group by cust_id having count(*)>=2;





