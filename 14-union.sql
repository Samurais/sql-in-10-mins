--- union ������select�����ϳ�һ�������

--- ���ӣ� ����Ҫ��ѯllinois��Indiana����Michigan�����������ݵ����й˿͵����֣�         
---����֪������λ���ĸ��ݵ�����Fun4ALL�˿͵����֡�


--- ��֮ǰѧ���Ŀ���ʵ��
    select cust_contact from Customers where cust_state IN('MI','IN','IL') OR cust_name = 'Fun4All';
--- Ҳ������unionʵ��
select cust_contact from Customers where cust_state IN('MI','IN','IL') union select cust_name from Customers where cust_name = 'Fun4All';

--������ıȽϿ�֪��union��ʵ���ǽ�����select�������һ����ѣ���������������û������֮ǰѧ���ĺá�������ĳЩ����£���������,��ʹ�������




