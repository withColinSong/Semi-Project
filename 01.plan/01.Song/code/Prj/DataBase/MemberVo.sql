CREATE TABLE membervo(
    seqno NUMBER,
	mid VARCHAR2(200) primary key,
	pwd VARCHAR2(200),
	name VARCHAR2(200),
	email VARCHAR2(100),
    phone VARCHAR2(100),
	zipcode VARCHAR2(30),
	address VARCHAR2(200),
    joindate DATE
);

DROP TABLE membervo;
DROP SEQUENCE seq_seqno;

CREATE SEQUENCE seq_seqno;
commit;

SELECT * FROM membervo;

INSERT INTO memberVO 
VALUES(seq_seqno.nextval,'song', '1234', '송송', 'song@gmail.com', '010-3333-3333', '11-333', '서울시', sysdate);



