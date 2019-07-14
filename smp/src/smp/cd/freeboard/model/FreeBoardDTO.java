package smp.cd.freeboard.model;

import java.sql.Date;

public class FreeBoardDTO {
	private int db_seq;
	private String id;
	private int db_wnumber;
	private String db_subject;
	private String db_content;
	private int db_readnum;
	private Date db_wdate;
	private int db_recommend;
	private String db_filename;
	
	public FreeBoardDTO(int db_seq, String id, int db_wnumber, String db_subject, String db_content, int db_readnum, Date db_wdate, int db_recommend
			,String db_filename) {
		super();
		this.db_seq = db_seq;
		this.id = id;
		this.db_wnumber = db_wnumber;
		this.db_subject = db_subject;
		this.db_content = db_content;
		this.db_readnum = db_readnum;
		this.db_wdate = db_wdate;
		this.db_recommend = db_recommend;
		this.db_filename = db_filename;
	}
	public int getDb_seq() {
		return db_seq;
	}
	public void setDb_seq(int db_seq) {
		this.db_seq = db_seq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getDb_wnumber() {
		return db_wnumber;
	}
	public void setDb_wnumber(int db_wnumber) {
		this.db_wnumber = db_wnumber;
	}
	public String getDb_subject() {
		return db_subject;
	}
	public void setDb_subject(String db_subject) {
		this.db_subject = db_subject;
	}
	public String getDb_content() {
		return db_content;
	}
	public void setDb_content(String db_content) {
		this.db_content = db_content;
	}
	public int getDb_readnum() {
		return db_readnum;
	}
	public void setDb_readnum(int db_readnum) {
		this.db_readnum = db_readnum;
	}
	public int getDb_recommend() {
		return db_recommend;
	}
	public void setDb_recommend(int db_recommend) {
		this.db_recommend = db_recommend;
	}
	public Date getDb_wdate() {
		return db_wdate;
	}
	public void setDb_wdate(Date db_wdate) {
		this.db_wdate = db_wdate;
	}
	public String getDb_filename() {
		return db_filename;
	}
	public void setDb_filename(String db_filename) {
		this.db_filename = db_filename;
	}
	
}
