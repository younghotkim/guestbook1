DROP TABLE guestbook;

DROP SEQUENCE seq_no;

CREATE TABLE guestbook (
            no NUMBER(5) PRIMARY KEY,
            name VARCHAR2(80),
            password VARCHAR2(20),
            content VARCHAR2(2000),
            reg_date DATE
            );

CREATE SEQUENCE seq_no
        INCREMENT BY 1
        START WITH 1
        NOCACHE;
 


INSERT INTO guestbook VALUES(seq_no.NEXTVAL, 'ȣ����', '1234', 'ȣ��~!', sysdate);
INSERT INTO guestbook VALUES(seq_no.NEXTVAL, '�޽�', '1234', '�ް�', sysdate);
INSERT INTO guestbook VALUES(seq_no.NEXTVAL, '�����', '1234', '������� ������~!', sysdate);
INSERT INTO guestbook VALUES(seq_no.NEXTVAL, 'Ĳ��', '1234', 'Ĳ���', sysdate);
INSERT INTO guestbook VALUES(seq_no.NEXTVAL, '���ڸ�', '1234', '���ڵ�', sysdate);
INSERT INTO guestbook VALUES(seq_no.NEXTVAL, '���̸���', '1234', '���̸���', sysdate);

commit;
        
SELECT no, name, password, content, reg_date
FROM guestbook
ORDER BY no asc;

DELETE FROM guestbook
WHERE no = 6
and password = 1234;