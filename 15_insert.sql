--- ���ݿ����ɾ��ģ�����֮ǰһֱ��ѧϰ'��'��������ѧϰ'��'


---����customers��������һ������,���µĹ˿�����!������û���ṩcust_country,cust_contact��cust_email��

insert into Customers(cust_id ,cust_name,cust_address,   cust_city,     cust_state,cust_zip)
            values('1000000006',       'Toy Land','123 Any Steet','New York',  'NY',       '11111');


--- ���������������  --����Ҫ����һ��CustNew�еĹ˿ͺϲ���customers��.
insert into Customers(cust_id,cust_city,cust_name,cust_state,cust_address,cust_email,cust_contact) select (cust_id,cust_city,cust_name,cust_state,cust_address,cust_email,cust_contact)from CustNew;

--- ���Ʊ�  �븴��Customers������ΪCustCopy

select * into CustCopy from Customers;
--mysql��ʹ��
create table CustCopy as select * from Customers;

--- ���ֻ�븴�Ʋ����У�������ȷ��������
select cust_city,cust_contact,cust_id into CustCopy from Customers;
create table CustCopy_2  as select cust_city,cust_contact,cust_id from Customers;







