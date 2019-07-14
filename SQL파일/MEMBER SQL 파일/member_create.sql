CREATE TABLE MEMBER (
	ID VARCHAR2(20) NOT NULL, /* 아이디 */
	PWD VARCHAR2(20), /* 비밀번호 */
	M_NAME VARCHAR2(15), /* 이름 */
	M_EMAIL VARCHAR2(30), /* 이메일 */
	M_PHONE VARCHAR2(15), /* 연락처 */
	M_LEVEL NUMBER(1) NOT NULL, /* 등급 */
    M_RDATE DATE
);

ALTER TABLE MEMBER
	ADD
		CONSTRAINT MEMBER_PK
		PRIMARY KEY (
			ID
		);
select * from MEMBER;