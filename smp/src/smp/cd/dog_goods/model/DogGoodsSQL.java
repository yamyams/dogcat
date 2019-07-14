package smp.cd.dog_goods.model;

public class DogGoodsSQL {
	static final String sqlS = "select rownum, dg_seq,id,dg_subject,dg_content,dg_readnum,dg_wdate from(select dg_seq,id,dg_subject,dg_content,dg_readnum,dg_wdate from DOG_GOODS order by dg_seq desc)";
	static final String sqlInfo = "select * from DOG_GOODS where DG_SEQ=?";
	static final String sqlW = "insert into DOG_GOODS values(DG_SEQ.nextval,?,?,?,0,sysdate)";
	static final String sqlD = "delete from DOG_GOODS where DG_SEQ=?";
	
	static final String sqlSearch = "select rownum, dg_seq,id,dg_subject,dg_content,dg_readnum,dg_wdate from(select dg_seq,id,dg_subject,dg_content,dg_readnum,dg_wdate from DOG_GOODS where dg_subject LIKE ? order by dg_seq desc)";
	//static final String sqlSearch = "select * from DOG_GOODS where dg_subject LIKE ? order by DG_SEQ desc";
	static final String sqlCnt = "update DOG_GOODS set dg_readnum=dg_readnum+1 where DG_SEQ=?";
}
