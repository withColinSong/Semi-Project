CREATE TABLE membervo(
    seqno number,
	mid varchar(200) primary key,
	pwd varchar(200),
	name varchar(100),
	email varchar(100),
    phone varchar(30),
	zipcode varchar(200),
	address varchar(200)

);

CREATE sequence seq_seqno;

commit;

INSERT INTO memberVO 
Values(seq_seqno.nextval,'song', '1234', '송송', 'song@gmail.com', '010-3333-3333', '11-333', '서울시');