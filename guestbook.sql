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
 


INSERT INTO guestbook VALUES(seq_no.NEXTVAL, 'È£³¯µÎ', '1234', 'È£¿ì~!', sysdate);
INSERT INTO guestbook VALUES(seq_no.NEXTVAL, '¸Þ½Ã', '1234', '¸Þ°«', sysdate);
INSERT INTO guestbook VALUES(seq_no.NEXTVAL, '¼ÕÈï¹Î', '1234', '¼ÕÈï¹ÎÀº ½´ÆÛÄÜ~!', sysdate);
INSERT INTO guestbook VALUES(seq_no.NEXTVAL, 'Ä²Å×', '1234', 'Ä²¿ä¹Ì', sysdate);
INSERT INTO guestbook VALUES(seq_no.NEXTVAL, '¾ÆÀÚ¸£', '1234', 'ÇÏÀÚµå', sysdate);
INSERT INTO guestbook VALUES(seq_no.NEXTVAL, '³×ÀÌ¸¶¸£', '1234', '³×ÀÌ¸¶°«', sysdate);

commit;
        
SELECT no, name, password, content, reg_date
FROM guestbook
ORDER BY no asc;

DELETE FROM guestbook
WHERE no = 6
and password = 1234;