--- ����ѧϰ���������ӷ�ʽ(��һ��ѧϰ��������ʵ��������),��ѧϰ��������ʹ�þۼ�����

--- �ڵ�7����ʹ���б���������Ҳ����ʹ�ñ����(��������sql���)
    --- ����һ�ε����ӣ��󶩹���RGAN01������Ʒ�����й˿�
select cust_id from Orders as O,OrderItems as OI  where  O.order_num=OI.order_num and OI.prod_id = 'RGAN01';


--- 1.������
    --- ���⣬Ҫ��Jim Jonesͬһ��˾�����й˿ͷ���һ���ʼ�


    --- ע�⣬����� FUN4ALL Ӧ���ǹ�˾�����֣������ڵ�Jim Jones���� Denise L ���������Ĺ�����
---   mysql> select * from Customers;

--    +------------+---------------+----------------------+-----------+------------+----------+--------------+--------------------+-----------------------+
--    | cust_id    | cust_name     | cust_address         | cust_city | cust_state | cust_zip | cust_country | cust_contact       | cust_email            |
--    +------------+---------------+----------------------+-----------+------------+----------+--------------+--------------------+-----------------------+
--    | 1000000001 | Village Toys  | 200 Maple Lane       | Detroit   | MI         | 44444    | USA          | John Smith         | sales@villagetoys.com |
--    | 1000000002 | Kids Place    | 333 South Lake Drive | Columbus  | OH         | 43333    | USA          | Michelle Green     | NULL                  |
--    | 1000000003 | Fun4All       | 1 Sunny Place        | Muncie    | IN         | 42222    | USA          | Jim Jones          | jjones@fun4all.com    |
--    | 1000000004 | Fun4All       | 829 Riverside Drive  | Phoenix   | AZ         | 88888    | USA          | Denise L. Stephens | dstephens@fun4all.com |
--    | 1000000005 | The Toy Store | 4545 53rd Street     | Chicago   | IL         | 54545    | USA          | Kim Howard         | NULL                  |
--    +------------+---------------+----------------------+-----------+------------+----------+--------------+--------------------+-----------------------+


    --- ��ǰ��ѧ�����Ӳ�ѯ�ķ�������ʵ��
    select cust_name from Customers where cust_name = (select cust_name from Customers where cust_contact = 'Jim Jones');

    --- ʹ�ñ��ڵ������ӵķ���,��ʵ���ϸ���һ�ڵ����Ӳ�ࡣֻ��������һ�ű����ˡ�����������������ű��ɡ�
     select Customers.cust_name  from Customers where Customers.cust_name = Customers.cust_name and Customers.cust_contact ='Jim Jones';


    --- 2. ������
    ---  ����custoerms�������й˿ͼ��䶩��,

    -- ������(�����������ȷ��Ϊ�յļ���������)
    select Customers.cust_id ,Orders.order_num from Customers,Orders where Orders.cust_id=Customers.cust_id;
            ---������=�����ߵ�ֵҲû��Ч��
    select Customers.cust_id ,Orders.order_num from Customers,Orders where Customers.cust_id = Orders.cust_id;

    --- ��������(�����ȷ!������custoerms��Ϊ��׼)
    select Customers.cust_id ,Orders.order_num from Customers LEFT OUTER JOIN Orders ON  Orders.cust_id=Customers.cust_id;

    --- ��������(�����������ȷ��Ϊ�յļ���������,��Ϊ�������ұߵ�OrderΪ��׼
    select Customers.cust_id ,Orders.order_num from Customers RIGHT  OUTER JOIN Orders ON  Orders.cust_id=Customers.cust_id;

     ---3.ȫ����
        --- ȫ�����൱��left��right���ܺ�(mysql��֧��)
         select Customers.cust_id ,Orders.order_num from Customers FULL OUTER JOIN Orders ON  Orders.cust_id=Customers.cust_id;


        --- 4.������ۼ������Ľ��
            --- Ҫ��������ÿ���˿��µĶ�����
