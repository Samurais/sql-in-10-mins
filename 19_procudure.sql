--�洢���̡������൱�ڱ���еĺ������������б仯��if,else,case�ȡ�
--- ���Ӳο�����http://www.cnblogs.com/chenpi/p/5136483.html
--- û�����鱾�ġ�

--ʵ��1 : �����洢����(����)�������������ĺ�

-- ----------------------------
-- Procedure structure for `proc_adder`
-- ----------------------------
DROP PROCEDURE IF EXISTS 'proc_adder';
DELIMITER ;;
CREATE PROCEDURE 'proc_adder'(IN a int, IN b int, OUT sum int)
BEGIN
		     --- Routine body goes here...

		    DECLARE c int;
		    if a is null then set a = 0; 
				    end if;
				  
				    if b is null then set b = 0;
						    end if;

						    set sum  = a + b;
				END
				;;
				DELIMITER ;


--- ����set @b=5
--- call proc_adder(2,@b,@num)
--- @num
