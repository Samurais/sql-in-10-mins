--- �ڵ�12��ʹ��������ʵ����: �󶩹���RGAN01�����й˿�id 
select cust_id from Orders ,OrderItems  where  Orders.order_num=OrderItems.order_num and OrderItems.prod_id = 'RGAN01';


--- ����ѧϰ��ͼ�������򻯲�ѯ��
--- ����һ����ѯ��������������ı�����ݣ�Ҳ�����
--- �����ص��Ƕ����������Ʒ�Ĺ˿͡�
create view ProductCustomers as   select cust_id from Orders ,OrderItems  where  Orders.order_num=OrderItems.order_num
