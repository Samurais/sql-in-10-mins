-- ��ƽ����
select AVG(prod_price) as avg_price from Products;

--ͳ�����й˿���(�������ĺ�)
select count(*) as num_cust from Customers;
--	ֻͳ�����ʼ��Ĺ˿���
select count(cust_email)as num_cust1 from Customers;

-- ��������Ʒ�۸�
select max(prod_price) as max_price from Products;
select min(prod_price) as min_price from Products;

--�󶩵�20005���й������Ʒ��
select sum(quantity)as item_ordered from OrderItems where order_num= 20005;


--�ۼ���ֵͬ �����м۸�ͬ��Ʒ��ƽ��ֵ
select AVG(DISTINCT prod_price) as avg_price from Products where vend_id='DLL01';


-- ��Ͼۼ� �����е���Ʒ���������Ʒ�۸���С��Ʒ�۸�ƽ���۸�:w
select count(*),min(prod_price),max(prod_price),min(prod_price),avg(prod_price) from Products;


