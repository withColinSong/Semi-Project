/* Create Tables */
-- 장바구니 테이블 및 시퀀스
CREATE TABLE Basket
(
	member_serial number NOT NULL,
	sb_product_serial number,
	sb_product_count number,
	PRIMARY KEY (member_serial)
);

CREATE SEQUENCE seq_basket;



-- 고객지원 테이블 및 시퀀스
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
    	inquiry_pserial NUMBER DEFAULT 0,
	PRIMARY KEY (inquiry_serial)
);

CREATE SEQUENCE seq_inquiry;



-- 고객지원 사진 테이블 및 시퀀스
CREATE TABLE Inquiry_Photo
(
	photo_serial number NOT NULL,
	photo_pserial number NOT NULL,
	photo_sysfile nvarchar2(1000) NOT NULL,
	photo_orifile nvarchar2(1000) NOT NULL,
	PRIMARY KEY (photo_serial)
);

CREATE SEQUENCE seq_inquiry_photo;



-- 회원 테이블 및 시퀀스
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



-- 공지사항 테이블 및 시퀀스, 데이터
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

INSERT INTO notice VALUES (seq_notice.nextval, 'FineApple 이용안내', 'FineApple 이용하는 방법을 안내드립니다', '2020-09-18', '0', '운영관리자');
INSERT INTO notice VALUES (seq_notice.nextval, '2020 업데이트 회원등급안내', '2020 업데이트 회원등급을 안내드립니다', '2020-09-30', '0', '운영관리자');
INSERT INTO notice VALUES (seq_notice.nextval, '실시간 상담톡 이용방법', '실시간 상담톡 이용하는 방법을 안내드립니다', '2020-10-02', '0', '운영관리자');
INSERT INTO notice VALUES (seq_notice.nextval, '개인정보 처리방침 개정 안내 (개정일 : 2020년 11월 30일)', '개인정보 처리방침 개정을 안내드립니다', '2020-10-12', '0', '운영관리자');
INSERT INTO notice VALUES (seq_notice.nextval, 'FineApple 사이트 점검 안내', 'FineApple 사이트 점검을 안내드립니다', '2020-10-20', '0', '운영관리자');
INSERT INTO notice VALUES (seq_notice.nextval, '   신규회원 가입 시 누리실 수 있는 다양한 혜택', '   신규회원 가입 시 누리실 수 있는 다양한 혜택을 안내드립니다', '2020-10-25', '0', '운영관리자');
INSERT INTO notice VALUES (seq_notice.nextval, '카카오톡 실시간 상담톡 OPEN', '카카오톡 실시간 상담톡을 안내드립니다', '2020-11-03', '0', '운영관리자');
INSERT INTO notice VALUES (seq_notice.nextval, '구매금액별 사은품 안내', '구매금액별 사은품을 안내드립니다', '2020-11-19', '0', '운영관리자');
INSERT INTO notice VALUES (seq_notice.nextval, ' 코로나로 인한 택배접수안내', ' 코로나로 인한 택배접수를 안내드립니다', '2020-12-05', '0', '운영관리자');



-- 주문 내역 테이블 및 시퀀스
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


-- 제품 테이블 시퀀스, 데이터
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

INSERT INTO product VALUES (seq_product.nextval, '갤럭시 Z 폴드2 5G', 2398000, 'https://images.samsung.com/is/image/samsung/sec-galaxy-z-fold2-f916-sm-f916nznakoo-openbackmysticbronze-308345462?$PD_GALLERY_L_PNG$', '휴대폰','../product/phone1.jsp');
INSERT INTO product VALUES (seq_product.nextval, '갤럭시 Z 폴드2 5G', 2398000, 'https://images.samsung.com/is/image/samsung/sec-galaxy-z-fold2-f916-sm-f916nzkakoo-openbackmysticblack-308345316?$PD_GALLERY_L_PNG$', '휴대폰', '../product/phone1-1.jsp');
INSERT INTO product VALUES (seq_product.nextval, '갤럭시 Z 플립 5G', 1650000, 'https://images.samsung.com/is/image/samsung/sec-galaxy-z-flip-5g-f707-sm-f707nzwakoo-fronttabletopmysticwhite-308345440?$PD_GALLERY_L_PNG$', '휴대폰', '../product/phone2-1.jsp');
INSERT INTO product VALUES (seq_product.nextval, '갤럭시 Z 플립 5G', 1650000, 'https://images.samsung.com/is/image/samsung/sec-galaxy-z-flip-5g-f707-sm-f707nznakoo-frontmysticbronze-308345243?$PD_GALLERY_L_PNG$', '휴대폰', '../product/phone2.jsp');
INSERT INTO product VALUES (seq_product.nextval, '갤럭시 Z 플립 5G', 1650000, 'https://images.samsung.com/is/image/samsung/sec-galaxy-z-flip-5g-f707-sm-f707nzaakoo-frontmysticgray-308345429?$PD_GALLERY_L_PNG$', '휴대폰', '../product/phone2-2.jsp');

INSERT INTO product VALUES (seq_product.nextval, 'iPhone 12 Pro Max', 1490000, 'https://thumbnail8.coupangcdn.com/thumbnails/remote/230x230ex/image/retail/images/94817515946998-8ce28413-b149-4fb8-bb4e-fdf20f16c2f3.jpg', '휴대폰', '../product/phone3.jsp');
INSERT INTO product VALUES (seq_product.nextval, 'iPhone 12 Pro Max', 1490000, 'https://thumbnail6.coupangcdn.com/thumbnails/remote/230x230ex/image/retail/images/94834543235119-03a7be31-1f28-434b-ad34-c2877d0b9e8a.jpg', '휴대폰', '../product/phone3-1.jsp');
INSERT INTO product VALUES (seq_product.nextval, 'iPhone 12 Pro Max', 1490000, 'https://thumbnail6.coupangcdn.com/thumbnails/remote/230x230ex/image/retail/images/94908525995005-be8906b2-964f-430c-b722-c8e9e7c54223.jpg', '휴대폰', '../product/phone3-2.jsp');
INSERT INTO product VALUES (seq_product.nextval, 'iPhone 12', 1480000, 'https://thumbnail6.coupangcdn.com/thumbnails/remote/230x230ex/image/retail/images/96908678869683-bfb65e17-5459-4178-be9f-c38a42a58c8a.jpg', '휴대폰', '../product/phone4.jsp');
INSERT INTO product VALUES (seq_product.nextval, 'iPhone 12', 1480000, 'https://thumbnail6.coupangcdn.com/thumbnails/remote/230x230ex/image/retail/images/96545156190109-6542154d-b1c1-47ac-a538-68bb2867023e.jpg', '휴대폰', '../product/phone4-1.jsp');

INSERT INTO product VALUES (seq_product.nextval, 'iPhone 11', 1060000, 'https://thumbnail8.coupangcdn.com/thumbnails/remote/230x230ex/image/retail/images/2019/10/15/10/4/0bc40b31-ac0d-4495-9901-a3e5a26f39eb.jpg', '휴대폰', '../product/phone5.jsp');
INSERT INTO product VALUES (seq_product.nextval, 'iPhone 11', 1060000, 'https://thumbnail9.coupangcdn.com/thumbnails/remote/230x230ex/image/retail/images/2019/10/15/10/0/c50fc2c3-5e54-4965-a4ff-9591c9a8047d.jpg', '휴대폰', '../product/phone5-1.jsp');



--리뷰게시판 테이블 및 시퀀스
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

-- 삭제하실 분.
DROP TABLE Order_product;
DROP TABLE Members;
DROP TABLE Review;
DROP TABLE Basket;
DROP TABLE Product;
DROP TABLE Inquiry;
DROP TABLE Notice;
DROP TABLE Inquiry_Photo;

DROP SEQUENCE seq_review;
DROP SEQUENCE seq_Order_product;
DROP SEQUENCE seq_Members;
DROP SEQUENCE seq_Basket;
DROP SEQUENCE seq_Product;
DROP SEQUENCE seq_Inquiry;
DROP SEQUENCE seq_Notice;
DROP SEQUENCE seq_Inquiry_Photo;
DROP VIEW Members;
ROLLBACK;

SELECT OWNER,OBJECT_TYPE FROM DBA_OBJECTS WHERE OBJECT_NAME='members';

SELECT OWNER,OBJECT_TYPE FROM DBA_OBJECTS WHERE OBJECT_NAME='notice';

SELECT * FROM notice;
SELECT * FROM members;