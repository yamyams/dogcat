package smp.cd.login.model;

public class MemberService {
	private MemberDAO dao;
	private static MemberService instance = new MemberService();
	
	public MemberService() {
		dao = new MemberDAO();
	}
	public static MemberService getInstance() {
		return instance;
	}
	public int joinS(String id,String pwd,String m_name, String m_email, String m_phone) {
		return dao.join(id, pwd, m_name, m_email, m_phone);
	}
	public int joinCheckS(String id) {
		return dao.joinCheak(id);
	}
	public int loginCheckS(String id, String pwd) {
		return dao.loginCheak(id, pwd);
	}
}
