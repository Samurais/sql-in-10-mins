--- ���� ��ɾ������������

---������ ������ָ��Ĭ��ֵ
CREATE TABLE Products2
(
  prod_id    char(10)      NOT NULL ,
  vend_id    char(10)      NOT NULL ,
  prod_name  char(255)     NOT NULL ,
  prod_price decimal(8,2)  NOT NULL default 1.00,
  prod_desc  text          NULL 
);

--- ɾ����
drop table Customers;
---��������

rename table CustCopy to Customers;


