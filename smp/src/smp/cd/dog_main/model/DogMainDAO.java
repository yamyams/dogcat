package smp.cd.dog_main.model;

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

public class DogMainDAO {
	private DataSource ds;
	
	DogMainDAO(){
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			ds = (DataSource)envContext.lookup("jdbc/myoracle");
		} catch (NamingException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
	}
	
	ArrayList<DogMainDTO> select(){
		ArrayList<DogMainDTO> list = new ArrayList<DogMainDTO>();
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			con = ds.getConnection();
			stmt = con.createStatement();
			rs = stmt.executeQuery(DogMainSQL.sqlS);
			while(rs.next()) {
				String dog_variety = rs.getString("dog_variety");
				String dog_weight = rs.getString("dog_weight");
				String dog_furcolor = rs.getString("dog_furcolor");
				String dog_furtype = rs.getString("dog_furtype");
				String dog_src = rs.getString("dog_src");
				String dog_character = rs.getString("dog_character");
				DogMainDTO dto = new DogMainDTO(dog_variety, dog_weight, dog_furcolor, dog_furtype, dog_src, dog_character);
				list.add(dto);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}finally {
			try {
				if(rs!=null) rs.close();
				if(stmt!=null) stmt.close();
				if(con!=null) con.close();
			}catch(Exception e) {}
		}
		return null;
	}
	public ArrayList<DogMainDTO> search(String is_keyword){
		ArrayList<DogMainDTO> searchList = new ArrayList<DogMainDTO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(DogMainSQL.sqlSL);
			pstmt.setString(1, "%"+is_keyword+"%");
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String dog_variety = rs.getString("dog_variety");
				String dog_weight = rs.getString("dog_weight");
				String dog_furcolor = rs.getString("dog_furcolor");
				String dog_furtype = rs.getString("dog_furtype");
				String dog_src = rs.getString("dog_src");
				String dog_character = rs.getString("dog_character");
				DogMainDTO dto = new DogMainDTO(dog_variety, dog_weight, dog_furcolor, dog_furtype, dog_src, dog_character);
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
