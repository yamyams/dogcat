/* ȸ�� 
CREATE TABLE MEMBER (
	ID VARCHAR2(20) NOT NULL, /* ���̵� */
	PWD VARCHAR2(20), /* ��й�ȣ */
	MEMBER_NAME VARCHAR2(10), /* �̸� */
	MEMBER_EMAIL VARCHAR2(30), /* �̸��� */
	MEMBER_PHONE VARCHAR2(20), /* ����ó */
	MEMBER_LEVEL NUMBER(1) NOT NULL /* ��� */
);

ALTER TABLE MEMBER
	ADD
		CONSTRAINT PK_MEMBER
		PRIMARY KEY (
			ID
		);
*/

/* �����Խ��� */
CREATE TABLE dog_board (
	db_seq NUMBER(3) NOT NULL, /* ������ */
	ID VARCHAR2(20) NOT NULL, /* ���̵� */
	db_wnumber NUMBER(3), /* �۳ѹ� */
	db_subject VARCHAR2(30) NOT NULL, /* ���� */
	db_content VARCHAR2(200) NOT NULL, /* ���� */
	db_readnum NUMBER(4) NOT NULL, /* ��ȸ�� */
	db_wdate DATE NOT NULL, /* �ۼ��ð� */
	db_recommend NUMBER(4), /* ��õ */
	db_filename VARCHAR2(1000) /* �� �÷� */
);

ALTER TABLE dog_board
	ADD
		CONSTRAINT PK_DOG_BOARD
		PRIMARY KEY (
			db_seq
		);

/* ����̹��� */

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