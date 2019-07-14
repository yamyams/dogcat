package smp.cd.freeboard.model;

class FreeBoardSQL {
	static final String sqlS="select * from dog_board order by db_seq desc";
	static final String sqlS2="select * from dog_board where db_seq = ?";
	
	static final String sqlI="insert into dog_board values(dog_board_idx.nextval, ?, dog_board_idx.nextval, ?, ?, 0, sysdate, 0, 'null')";
	static final String sqlD="delete dog_board where db_seq = ?";
	
	static final String sqlUS="select * from dog_board where db_seq=?";
	static final String sqlU="update dog_board set db_subject=?, db_content=?, db_wdate=sysdate where db_seq=?";
	static final String sqlUR="update dog_board set db_readnum = db_readnum+1 where db_seq=?";
	
	static final String sqlcount = "select count(*) as totalCount from dog_board";
	static final String sqlSP = "select b.db_seq from (select a.*, rownum rnum from + (select * from dog_board order by db_seq )a )b where b.rnum BETWEEN ? and ? order by db_seq desc)";
}
