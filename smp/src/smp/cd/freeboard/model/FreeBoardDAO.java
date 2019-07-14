package smp.cd.freeboard.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

class FreeBoardDAO {
	private DataSource ds;
	FreeBoardDAO(){
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			ds = (DataSource)envContext.lookup("jdbc/myoracle");
		}catch(NamingException ne) {}
	}
	ArrayList<FreeBoardDTO> select(){	// 글 목록
		ArrayList<FreeBoardDTO> list = new ArrayList<FreeBoardDTO>();
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			con = ds.getConnection();
			stmt = con.createStatement();
			rs = stmt.executeQuery(FreeBoardSQL.sqlS);
			while(rs.next()) {
				int db_seq = rs.getInt(1);
				String id = rs.getString(2);
				int db_wnumber = rs.getInt(3);
				String db_subject = rs.getString(4);
				String db_content = rs.getString(5);
				int db_readnum = rs.getInt(6);
				java.sql.Date db_wdate = rs.getDate(7);
				int db_recommend = rs.getInt(8);
				String db_filename = rs.getString(9);
				FreeBoardDTO dto = new FreeBoardDTO(db_seq, id, db_wnumber, db_subject, db_content, db_readnum, db_wdate, db_recommend, db_filename);
				list.add(dto);
			}
			return list;
		}catch(SQLException se) {
			System.out.println("se : "+se);
			return null;
		}finally {
			try {
				if(rs!=null) rs.close();
				if(stmt!=null) stmt.close();
				if(con!=null) con.close();
			}catch(SQLException se) {}
		}
	}
	FreeBoardDTO select2(int seq) {		// 글 확인
		Connection con = null;
		PreparedStatement pstmtC = null;
		ResultSet rs = null;
		try {
			con = ds.getConnection();
			pstmtC = con.prepareStatement(FreeBoardSQL.sqlS2);
			pstmtC.setInt(1, seq);
			rs = pstmtC.executeQuery();
			rs.next();			
			int db_seq = rs.getInt(1);
			String id = rs.getString(2);
			int db_wnumber = rs.getInt(3);
			String db_subject = rs.getString(4);
			String db_content = rs.getString(5);
			int db_readnum = rs.getInt(6);
			java.sql.Date db_wdate = rs.getDate(7);
			int db_recommend = rs.getInt(8);
			String db_filename = rs.getString(9);
			FreeBoardDTO dto = new FreeBoardDTO(db_seq, id, db_wnumber, db_subject, db_content, db_readnum, db_wdate, db_recommend, db_filename);
			return dto;
		}catch(SQLException se) {
			System.out.println("se : "+se);
			return null;
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmtC != null) pstmtC.close();
				if(con != null) con.close();
			}catch(SQLException se) {}
		}
	}
	void insert(FreeBoardDTO dto){	// 글 삽입
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(FreeBoardSQL.sqlI);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getDb_subject());
			pstmt.setString(3, dto.getDb_content());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("e : "+e);
		}finally {
			try {
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch (SQLException e) {}
		}
	}
	void delete(int seq) {	// 글 삭제
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(FreeBoardSQL.sqlD);
			pstmt.setInt(1, seq);
			pstmt.executeUpdate();
		}catch(SQLException se) {
			System.out.println("se : "+se);
		}finally {
			try {
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(SQLException se) {}
		}
	}
	FreeBoardDTO updateS(FreeBoardDTO dto) {	// 글 수정 보기
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(FreeBoardSQL.sqlUS);
			pstmt.setInt(1, dto.getDb_seq());
			rs = pstmt.executeQuery();
			rs.next();
			int seq = rs.getInt(1);
			String id = rs.getString(2);
			int wnumber = rs.getInt(3);
			String subject = rs.getString(4);
			String content = rs.getString(5);
			int readnum = rs.getInt(6);
			java.sql.Date wdate = rs.getDate(7);
			int recommend = rs.getInt(8);
			String filename = rs.getString(9);
			FreeBoardDTO dto2 = new FreeBoardDTO(seq, id, wnumber, subject, content, readnum, wdate, recommend, filename);
			return dto2;
		}catch(SQLException se) {
			System.out.println("se : "+se);
			return null;
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(SQLException se) {}
		}
	}
	void updateU(FreeBoardDTO dto) {	// 글 수정
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(FreeBoardSQL.sqlU);
			pstmt.setString(1, dto.getDb_subject());
			pstmt.setString(2, dto.getDb_content());
			pstmt.setInt(3, dto.getDb_seq());
			pstmt.executeUpdate();
		}catch(SQLException se) {
			System.out.println("se : "+se);
		}finally {
			try {
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(SQLException se) {}
		}
	}
	void readnum(int seq) {		// 조회수 증가
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(FreeBoardSQL.sqlUR);
			pstmt.setInt(1, seq);
			pstmt.executeUpdate();
		}catch(SQLException se) {
			System.out.println("se : "+se);
		}finally {
			try {
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(SQLException se) {}
		}
	}
	int totalcount() {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs  = null;
		int totalcount = 0;
		try {
			con = ds.getConnection();
			stmt = con.createStatement();
			rs = stmt.executeQuery(FreeBoardSQL.sqlcount);
			if(rs.next()) {
				totalcount = rs.getInt(1);
				return totalcount;
			}else {
				return totalcount;
			}
		}catch(SQLException se) {
			System.out.println("se : "+se);
			return totalcount;
		}finally {
			try {
				if(stmt != null) stmt.close();
				if(con != null) con.close();
			}catch(SQLException se) {}
		}
	}

}
