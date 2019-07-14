/* 회원 
CREATE TABLE MEMBER (
	ID VARCHAR2(20) NOT NULL, /* 아이디 */
	PWD VARCHAR2(20), /* 비밀번호 */
	MEMBER_NAME VARCHAR2(10), /* 이름 */
	MEMBER_EMAIL VARCHAR2(30), /* 이메일 */
	MEMBER_PHONE VARCHAR2(20), /* 연락처 */
	MEMBER_LEVEL NUMBER(1) NOT NULL /* 등급 */
);

ALTER TABLE MEMBER
	ADD
		CONSTRAINT PK_MEMBER
		PRIMARY KEY (
			ID
		);
*/

/* 자유게시판 */
CREATE TABLE dog_board (
	db_seq NUMBER(3) NOT NULL, /* 시퀀스 */
	ID VARCHAR2(20) NOT NULL, /* 아이디 */
	db_wnumber NUMBER(3), /* 글넘버 */
	db_subject VARCHAR2(30) NOT NULL, /* 제목 */
	db_content VARCHAR2(200) NOT NULL, /* 내용 */
	db_readnum NUMBER(4) NOT NULL, /* 조회수 */
	db_wdate DATE NOT NULL, /* 작성시간 */
	db_recommend NUMBER(4), /* 추천 */
	db_filename VARCHAR2(1000) /* 새 컬럼 */
);

ALTER TABLE dog_board
	ADD
		CONSTRAINT PK_DOG_BOARD
		PRIMARY KEY (
			db_seq
		);

/* 배경이미지 */

ALTER TABLE dog_board
	ADD
		CONSTRAINT FK_MEMBER_TO_DOG_BOARD
		FOREIGN KEY (
			ID
		)
		REFERENCES MEMBER (
			ID
		);

create sequence dog_board_idx;