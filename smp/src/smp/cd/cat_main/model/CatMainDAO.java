package smp.cd.cat_main.model;

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

public class CatMainDAO {
	private DataSource ds;
	
	CatMainDAO(){
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			ds = (DataSource)envContext.lookup("jdbc/myoracle");
		}catch(NamingException ne) {
			System.out.println(ne.getMessage());
			ne.printStackTrace();
		}
	}
	
	ArrayList<CatMainDTO> select(){
		ArrayList<CatMainDTO> list = new ArrayList<CatMainDTO>();
		Connection con=null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			con = ds.getConnection();
			stmt = con.createStatement();
			rs = stmt.executeQuery(CatMainSQL.sqlS);
			while(rs.next()) {
				String cat_variety = rs.getString("cat_variety");
				String cat_weight = rs.getString("cat_weight");
				String cat_furcolor = rs.getString("cat_furcolor");
				String cat_furtype = rs.getString("cat_furtype");
				String cat_src = rs.getString("cat_src");
				String cat_character = rs.getString("cat_character");
				CatMainDTO dto = new CatMainDTO(cat_variety, cat_weight, cat_furcolor, cat_furtype, cat_src, cat_character);
				list.add(dto);
			}
			return list;
		} catch (SQLException se) {
			se.printStackTrace();
			System.out.println(se.getMessage());
		}finally{
			try {
				if(rs!=null) rs.close();
				if(stmt!=null) stmt.close();
				if(con!=null) con.close();
			}catch(Exception e) {}
		}
		return null;
	}
	
	public ArrayList<CatMainDTO> search(String is_keyword){
		ArrayList<CatMainDTO> searchList = new ArrayList<CatMainDTO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(CatMainSQL.sqlSL);
			pstmt.setString(1, "%"+is_keyword+"%");
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String cat_variety = rs.getString("cat_variety");
				String cat_weight = rs.getString("cat_weight");
				String cat_furcolor = rs.getString("cat_furcolor");
				String cat_furtype = rs.getString("cat_furtype");
				String cat_src = rs.getString("cat_src");
				String cat_character = rs.getString("cat_character");
				CatMainDTO dto = new CatMainDTO(cat_variety, cat_weight, cat_furcolor, cat_furtype, cat_src, cat_character);
				searchList.add(dto);
			}
			return searchList;
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(con!=null) con.close();
			}catch(Exception e) {}
		}
		
		return null;
	}
}
