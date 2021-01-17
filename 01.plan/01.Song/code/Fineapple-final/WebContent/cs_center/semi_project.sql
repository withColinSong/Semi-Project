

/* Create Tables */

CREATE TABLE Basket
(
	member_serial number NOT NULL,
	sb_product_serial number,
	sb_product_count number,
	PRIMARY KEY (member_serial)
);

CREATE SEQUENCE seq_basket;

CREATE TABLE Inquiry
(
	inquiry_serial number NOT NULL,
	inquiry_type nvarchar2(50) NOT NULL,
	inquiry_mid nvarchar2(50) NOT NULL,
	inquiry_pwd nvarchar2(50) NOT NULL,
	inquiry_subject nvarchar2(500) NOT NULL,
	inquiry_doc nvarchar2(2000) NOT NULL,
	inqyiry_visible nvarchar2(50),
	inquiry_date date NOT NULL,
	PRIMARY KEY (inquiry_serial)
);

CREATE SEQUENCE seq_inquiry;

CREATE TABLE Inquiry_Photo
(
	photo_serial number NOT NULL,
	photo_pserial number NOT NULL,
	photo_sysfile nvarchar2(1000) NOT NULL,
	photo_orifile nvarchar2(1000) NOT NULL,
	PRIMARY KEY (photo_serial)
);

CREATE SEQUENCE seq_inquiry_photo;

CREATE TABLE Members
(
	member_serial number NOT NULL,
	member_mid nvarchar2(50) NOT NULL,
	member_pwd nvarchar2(50) NOT NULL,
	member_name nvarchar2(50) NOT NULL,
	member_email nvarchar2(50) NOT NULL,
	member_phone nvarchar2(50) NOT NULL,
	member_zipcode nvarchar2(50) NOT NULL,
	member_address nvarchar2(200) NOT NULL,
	member_signup_date date NOT NULL,
	PRIMARY KEY (member_serial)
);

CREATE SEQUENCE seq_members;

CREATE TABLE Notice
(
	notice_serial number NOT NULL,
	notice_subject nvarchar2(500) NOT NULL,
	notice_doc nvarchar2(2000) NOT NULL,
	notice_date date NOT NULL,
	notice_hit number NOT NULL,
	notice_mid nvarchar2(50) NOT NULL,
	PRIMARY KEY (notice_serial)
);

CREATE SEQUENCE seq_notice;

INSERT INTO NOTICE VALUES (NOTICE_SEQ.nextval, 'FineApple 이용안내', 'FineApple 이용하는 방법을 안내드립니다', '2020-09-18', '0');
INSERT INTO NOTICE VALUES (NOTICE_SEQ.nextval, '2020 업데이트 회원등급안내', '2020 업데이트 회원등급을 안내드립니다', '2020-09-30', '0');
INSERT INTO NOTICE VALUES (NOTICE_SEQ.nextval, '실시간 상담톡 이용방법', '실시간 상담톡 이용하는 방법을 안내드립니다', '2020-10-02', '0');
INSERT INTO NOTICE VALUES (NOTICE_SEQ.nextval, '개인정보 처리방침 개정 안내 (개정일 : 2020년 11월 30일)', '개인정보 처리방침 개정을 안내드립니다', '2020-10-12', '0');
INSERT INTO NOTICE VALUES (NOTICE_SEQ.nextval, 'FineApple 사이트 점검 안내', 'FineApple 사이트 점검을 안내드립니다', '2020-10-20', '0');
INSERT INTO NOTICE VALUES (NOTICE_SEQ.nextval, '   신규회원 가입 시 누리실 수 있는 다양한 혜택', '   신규회원 가입 시 누리실 수 있는 다양한 혜택을 안내드립니다', '2020-10-25', '0');
INSERT INTO NOTICE VALUES (NOTICE_SEQ.nextval, '카카오톡 실시간 상담톡 OPEN', '카카오톡 실시간 상담톡을 안내드립니다', '2020-11-03', '0');
INSERT INTO NOTICE VALUES (NOTICE_SEQ.nextval, '구매금액별 사은품 안내', '구매금액별 사은품을 안내드립니다', '2020-11-19', '0');
INSERT INTO NOTICE VALUES (NOTICE_SEQ.nextval, ' 코로나로 인한 택배접수안내', ' 코로나로 인한 택배접수를 안내드립니다', '2020-12-05', '0');




CREATE TABLE Order_product
(
	order_serial number NOT NULL,
	order_product_count number NOT NULL,
	order_product_name varchar2(100) NOT NULL,
	order_date number NOT NULL,
	order_address nvarchar2(500) NOT NULL,
	order_state nvarchar2(500) NOT NULL,
	PRIMARY KEY (order_serial)
);

CREATE SEQUENCE seq_order_product;

CREATE TABLE Product
(
	product_serial number NOT NULL,
	product_name nvarchar2(50) NOT NULL,
	product_price number NOT NULL,
	product_picture_url nvarchar2(1000) NOT NULL,
	product_description nvarchar2(1000) NOT NULL,
	product_link_url nvarchar2(1000) NOT NULL,
	PRIMARY KEY (product_serial)
);

CREATE SEQUENCE seq_product;

CREATE TABLE Review
(
	review_no number NOT NULL,
	review_mid nvarchar2(50) NOT NULL,
	review_subject nvarchar2(500) NOT NULL,
	review_doc nvarchar2(2000) NOT NULL,
	review_date date NOT NULL,
	review_photo nvarchar2(1000),
	PRIMARY KEY (review_no)
);

CREATE SEQUENCE seq_review;

/* Create Foreign Keys */

ALTER TABLE Inquiry_Photo
	ADD FOREIGN KEY (photo_pserial)
	REFERENCES Inquiry (inquiry_serial)
;

ALTER TABLE Basket
	ADD FOREIGN KEY (member_serial)
	REFERENCES Members (member_serial)
;



