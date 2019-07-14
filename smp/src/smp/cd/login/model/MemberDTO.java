package smp.cd.login.model;

import java.sql.Date;

public class MemberDTO {
	private String id;
	private String pwd;
	private String m_name;
	private String m_email;
	private String m_phone;
	private int m_level;
	private Date m_rdate;
	
	public MemberDTO() {}
	public MemberDTO(String id, String pwd, String m_name, String m_email, String m_phone, int m_level, Date m_rdate) {
		this.id = id;
		this.pwd = pwd;
		this.m_name = m_name;
		this.m_email = m_email;
		this.m_phone = m_phone;
		this.m_level = m_level;
		this.m_rdate = m_rdate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public String getM_phone() {
		return m_phone;
	}

	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}

	public int getM_level() {
		return m_level;
	}

	public void setM_level(int m_level) {
		this.m_level = m_level;
	}

	public Date getM_rdate() {
		return m_rdate;
	}

	public void setM_rdate(Date m_rdate) {
		this.m_rdate = m_rdate;
	}
	
	
}
