CREATE TABLE DOG_GOODS (
	DG_SEQ NUMBER NOT NULL, /* �۹�ȣ */
	ID VARCHAR2(20) NOT NULL, /* ���̵� */
	DG_SUBJECT VARCHAR2(60) NOT NULL, /* ���� */
	DG_CONTENT VARCHAR2(4000) NOT NULL, /* ���� */
	DG_READNUM NUMBER NOT NULL, /* ��ȸ�� */
	DG_WDATE DATE NOT NULL /* �ۼ��ð� */
);
alter table DOG_GOODS add constraint PK_DOG_GOODS primary key(DG_SEQ);
alter table DOG_GOODS add constraint DG_ID_FK foreign key(ID) references MEMBER on delete cascade;

create sequence DG_SEQ increment by 1 start with 1 nocache;

-- Ȯ�� 
select TNAME from TAB;
select SEQUENCE_NAME from SEQ;
select CONSTRAINT_NAME, CONSTRAINT_TYPE from user_constraints order by CONSTRAINT_NAME;