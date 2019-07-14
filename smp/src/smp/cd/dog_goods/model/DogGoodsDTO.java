package smp.cd.dog_goods.model;

import java.sql.Date;

public class DogGoodsDTO {
	private int rownum;
	private int dg_seq;
	private String id;
	private String dg_subject;
	private String dg_content;
	private int dg_readnum;
	private Date dg_wdate;
	
	public DogGoodsDTO(int dg_seq, String id, String dg_subject, String dg_content, int dg_readnum, Date dg_wdate) {
		this.dg_seq = dg_seq;
		this.id = id;
		this.dg_subject = dg_subject;
		this.dg_content = dg_content;
		this.dg_readnum = dg_readnum;
		this.dg_wdate = dg_wdate;
	}
	
	

	public int getRownum() {
		return rownum;
	}



	public void setRownum(int rownum) {
		this.rownum = rownum;
	}



	public int getDg_seq() {
		return dg_seq;
	}

	public void setDg_seq(int dg_seq) {
		this.dg_seq = dg_seq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDg_subject() {
		return dg_subject;
	}

	public void setDg_subject(String dg_subject) {
		this.dg_subject = dg_subject;
	}

	public String getDg_content() {
		return dg_content;
	}

	public void setDg_content(String dg_content) {
		this.dg_content = dg_content;
	}

	public int getDg_readnum() {
		return dg_readnum;
	}

	public void setDg_readnum(int dg_readnum) {
		this.dg_readnum = dg_readnum;
	}

	public Date getDg_wdate() {
		return dg_wdate;
	}

	public void setDg_wdate(Date dg_wdate) {
		this.dg_wdate = dg_wdate;
	}
}
