package smp.cd.dog_goods.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;


public class DogGoodsDAO {
	private DataSource ds;
	
	DogGoodsDAO(){
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			ds = (DataSource)envContext.lookup("jdbc/myoracle");
		} catch (NamingException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
	}
	public int getCount() {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		int count = 0;
		try {
			con = ds.getConnection();
			stmt = con.createStatement();
			rs = stmt.executeQuery(DogGoodsSQL.sqlS);
			while(rs.next()) {
				count++;
			}
			return count;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(stmt != null) stmt.close();
				if(con != null) con.close();
			}catch(Exception e) {}
		}
		return count;
	}
	public int getCount(String is_keyword) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int count = 0;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(DogGoodsSQL.sqlSearch);
			pstmt.setString(1, "%"+is_keyword+"%");
			rs = pstmt.executeQuery();
			while(rs.next()) {
				count++;
			}
			return count;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(Exception e) {}
		}
		return count;
	}
	
	ArrayList<DogGoodsDTO> select(){
		ArrayList<DogGoodsDTO> list = new ArrayList<DogGoodsDTO>();
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			con = ds.getConnection();
			stmt = con.createStatement();
			rs = stmt.executeQuery(DogGoodsSQL.sqlS);
			while(rs.next()) {
				int rownum = rs.getInt("rownum");
				int dg_seq = rs.getInt("dg_seq");
				String id = rs.getString("id");
				String dg_subject = rs.getString("dg_subject");
				String dg_content = rs.getString("dg_content");
				int dg_readnum = rs.getInt("dg_readnum");
				Date dg_wdate = rs.getDate("dg_wdate");
				DogGoodsDTO dto = new DogGoodsDTO(dg_seq, id, dg_subject, dg_content, dg_readnum, dg_wdate);
				dto.setRownum(rownum);
				list.add(dto);
			}
			return list;	//리스트 출력 성공
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(stmt != null) stmt.close();
				if(con != null) con.close();
			}catch(Exception e) {}
		}
		return null;	//데이터베이스 오류
	}
	ArrayList<DogGoodsDTO> search(String is_keyword){
		ArrayList<DogGoodsDTO> searchList = new ArrayList<DogGoodsDTO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(DogGoodsSQL.sqlSearch);
			pstmt.setString(1, "%"+is_keyword+"%");
			rs = pstmt.executeQuery();
			while(rs.next()) {
				int rownum = rs.getInt("rownum");
				int dg_seq = rs.getInt("dg_seq");
				String id = rs.getString("id");
				String dg_subject = rs.getString("dg_subject");
				String dg_content = rs.getString("dg_content");
				int dg_readnum = rs.getInt("dg_readnum");
				Date dg_wdate = rs.getDate("dg_wdate");
				DogGoodsDTO dto = new DogGoodsDTO(dg_seq, id, dg_subject, dg_content, dg_readnum, dg_wdate);
				dto.setRownum(rownum);
				searchList.add(dto);
			}
			return searchList;
		}catch(Exception e) {
			System.out.println(e.getMessage()+" from DogGoodsDAO ArrayList<DogGoodsDTO> search(int dg_seq)");
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(con!=null) con.close();
			}catch(Exception e) {}
		}
		return null;
	}
	DogGoodsDTO info(int dg_seq){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(DogGoodsSQL.sqlInfo);
			pstmt.setInt(1, dg_seq);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				String id = rs.getString("id");
				String dg_subject = rs.getString("dg_subject");
				String dg_content = rs.getString("dg_content");
				int dg_readnum = rs.getInt("dg_readnum");
				Date dg_wdate = rs.getDate("dg_wdate");
				DogGoodsDTO dto = new DogGoodsDTO(dg_seq, id, dg_subject, dg_content, dg_readnum, dg_wdate);
				return dto;
			}
		}catch(Exception e) {
			System.out.println(e.getMessage() +"DogGoodsDTO info(int dg_seq)");
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(Exception e){
				System.out.println(e.getMessage());
			}
		}
		return null;
	}
	void updateReadCnt(int dg_seq) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(DogGoodsSQL.sqlCnt);
			pstmt.setInt(1, dg_seq);
			int i = pstmt.executeUpdate();
			System.out.println(i+"번 조회수 추가");
		}catch(Exception e) {
			System.out.println(e.getMessage()+" DogGoodsDAO void updateReadCnt(int dg_seq)");
		}finally {
			try {
				if(con!=null) con.close();
				if(pstmt!=null) pstmt.close();
			}catch(Exception e) {}
		}
	}
	void delete(int dg_seq) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(DogGoodsSQL.sqlD);
			pstmt.setInt(1, dg_seq);
			int i = pstmt.executeUpdate();
			System.out.println(i+"행 삭제 from DogGoodsDAO");
		}catch(Exception e) {
			System.out.println(e.getMessage() +"void delete(int dg_seq)");
		}
	}
	
	void write(String id, String dg_subject, String dg_content){
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(DogGoodsSQL.sqlW);
			pstmt.setString(1, id);
			pstmt.setString(2, dg_subject);
			pstmt.setString(3, dg_content);
			pstmt.executeUpdate();
		}catch(Exception e) {
			System.out.println(e.getMessage() + " void write(String id, String dg_subject, String dg_content)");
		}finally {
			try {
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(Exception e) {}
		}
	}
}
