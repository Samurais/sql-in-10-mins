--- ���¿�ʼ�ڶ�����в���,�õ��Ӳ�ѯ����һ��select�Ľ����Ϊ��һ��select������

--- �󶩹���RGAN01������Ʒ�����й˿͡�
	---������ѧ����֪ʶ���÷�����
	---��һ������OrderIterms�������������RGAN01�Ķ�����
	select order_num from OrderItems where prod_id='RGAN01';
	---�ڶ�������������Ķ���������Orders���������Ӧ��cust_id
	select cust_id from Orders where (order_num='20007' or order_num='20008');

	--- ���԰�����ϳ�һ��,����һ���Ľ����Ϊ�ڶ���������
	select cust_id from Orders where order_num IN (select order_num from OrderItems where prod_id = 'RGAN01');


--- ��Customers����ÿ���ͻ��Ķ�������.��Ҫע����ǣ�ֱ����orders���и���cust_id��ͳ�Ʋ���ȷ����Ϊ����Customers�еĹ˿�ֻ��orders����cust_id��һ���֡�һ���Ӽ�����

	---���ǿ���һ�����󣬱���,�������ܴ�ʱ��
	select count(*) from Orders where Orders.cust_id = '1000000001';
	--- ��Ȼ������һ���󰡣�
	select count(*) from Orders where Orders.cust_id = Customers.cust_id ;
		---�������������!ERROR 1054 (42S22): Unknown column 'Customers.cust_id' in 'where clause'
		--- ��������cust_id�Ƕ�����?���ݿ�������֪�����������ǻ���Ҫһ��select cust_id from Customers���õ�һ��cust_id��list
	---������ȷ��. ������Ǻܺõ����������������ļ������join�÷�
	select cust_name ,(select count(*) from Orders where Orders.cust_id = Customers.cust_id) from Customers;




