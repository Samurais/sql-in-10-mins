--- �޸ı��е����ݡ�ɾ��/���ӱ��е�ĳһ��/��

--- update:  ��100000005���ӵ����ʼ�
    update Customers  set cust_email='kim@thetoystore.com'where cust_id = '1000000005';
    ---        ȡ����100000005���ӵ����ʼ�
    update Customers  set cust_email=NULL where cust_id = '1000000005';

---delete  ɾ��100000006��һ��
    delete from Customers where cust_id = '1000000006';

--- ����һ��

create table vendors_copy as select * from Vendors;
alter table vendors_copy add vend_phone char(20);

---ɾ��һ��
alter table vendors_copy drop column vend_phone;





--

