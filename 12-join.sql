---��һ�������Ӳ�ѯ
    --- 1.�󶩹���RGAN01������Ʒ�����й˿�
    --- 2.��Customers����ÿ���ͻ��Ķ���������

   ---ʵ�ֵñȽϲ����㣬����ʹ������

    --- 1. ��һ�ڵ��Ӳ�ѯʵ��   
            select cust_id from Orders where order_num IN (select order_num from OrderItems where prod_id = 'RGAN01');

    ---    ���ڵ�����ʵ��  
                                                     ---������⣬�����order_num�������ӵ��ֶ�    ---Ȼ��OrderIterms���е�prod_id��������һ��ı��н���ɸѡ
            select cust_id from Orders ,OrderItems  where  Orders.order_num=OrderItems.order_num and OrderItems.prod_id = 'RGAN01';

    --- 2. ��һ�ڵ��Ӳ�ѯʵ��   
            select cust_name ,(select count(*) from Orders where Orders.cust_id = Customers.cust_id) from Customers;
    ---    ���ڵ�����ʵ��  
                --���������ô��Ū!�����Ժ�



---------------------------------------------------------------------------------------------------
--- ����ѧϰ����
   

---example1 ��ӡ��Products����ÿ����Ʒ�Ĺ�Ӧ�̵����֣�ÿ����Ʒ�����֡��۸�
select vend_name,prod_name,prod_price from Vendors,Products where Vendors.vend_id = Products.vend_id;

---example 2  
        --- 1.��ʾ����20007�е�������Ʒ����۸� (�����20007д��'20007'Ҳ����,select�е�prod_idҪ���޶�)
    select prod_name,prod_price,Products.prod_id from Products,OrderItems where Products.prod_id = OrderItems.prod_id  and order_num=20007;

        --- 2.��ʾ����20007�е�������Ʒ���۸��乩������
    select prod_name,prod_price ,  Vendors.vend_name from Products,OrderItems,Vendors  where Products.prod_id = OrderItems.prod_id  and order_num=20007 and Vendors.vend_id=Products.vend_id;


    


