package smp.cd.login.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class MemberDAO {
	private DataSource ds;
	
	public MemberDAO(){
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			ds = (DataSource)envContext.lookup("jdbc/myoracle");
		} catch (NamingException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
	}
	public int loginCheak(String id, String pwd) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbPwd = "";
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(MemberSQL.sqlCheckID);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dbPwd = rs.getString("pwd");
				if(dbPwd.equals(pwd)) {
					return 1;	//�α��� ������ ���̵�
				}else {
					return 0; //���̵�� �����ϳ� ��й�ȣ�� Ʋ��
				}
			}else {
				return 0; //�α��� �Ұ����� ���̵�
			}
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("error! from loginCheak(String id, String pwd)");
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(con!=null) con.close();
			}catch(Exception e) {}
		}
		return -1; // ����
	}
	public int joinCheak(String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(MemberSQL.sqlCheckID);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next() || id.equals("")) {
				return 0; //�̹� �����ϴ� ���̵�
			}else {
				return 1; //���� ������ ���̵�
			}
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("error! from joinCheak(String id)");
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(con!=null) con.close();
			}catch(Exception e) {}
		}
		return -1; // ����
	}
	public int join(String id,String pwd,String m_name, String m_email, String m_phone) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(MemberSQL.sqlJoin);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, m_name);
			pstmt.setString(4, m_email);
			pstmt.setString(5, m_phone);
			int i = pstmt.executeUpdate();
			return i;
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("error! from join(MemberDTO dto)");
		}finally {
			try {
				if(pstmt!=null) pstmt.close();
				if(con!=null) con.close();
			}catch(Exception e) {}
		}
		return -1; // ����
	}
}
