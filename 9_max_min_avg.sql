-- ��ƽ����	 ��Products����������Ʒ��ƽ���۸�
select AVG(prod_price) as avg_price from Products;

--ͳ�����й˿���(��ͳ��һ���ж�����)	��Customers���й˿���
select count(*) as num_cust from Customers;

--	ֻͳ�����ʼ��Ĺ˿���
select count(cust_email)as n_email_cust from Customers;

-- ��������Ʒ�۸�
select max(prod_price) as max_price from Products;
select min(prod_price) as min_price from Products;

--�󶩵�20005���й������Ʒ��
select sum(quantity)as item_ordered from OrderItems where order_num= 20005;
  -- ע���������,��ʵ��������Ƕ���20005�����˼�����Ʒ
select count(*) from OrderItems where order_num=20005;


--�ۼ���ֵͬ �󹩻���DLL01��Ӧ����Ʒ�۸��ƽ��ֵ(ͬ���ļ۸��ֻ��һ��)
select AVG(DISTINCT prod_price) as avg_price from Products where vend_id='DLL01';


-- ��Ͼۼ� �����е���Ʒ���������Ʒ�۸���С��Ʒ�۸�ƽ���۸�
select count(*),min(prod_price),max(prod_price),avg(prod_price) from Products;
-- �����������У��ص��עһ�� select count(*) from Products; ����������е�����,Ҳ�������е���Ʒ��!


