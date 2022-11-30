package com.kadeGroup;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
	public LoginDao() {
	}
	String url = "jdbc:postgresql://localhost:5432/gp405";
	String username = "knob";
	String password = "badpassword";
	public boolean checkCredentials(String uname, String pass) {
		String sql="select * from account where email_id=? and pass=?";
		try {
			Class.forName("org.postgresql.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1,  uname);
			st.setString(2, pass);
			ResultSet rs = st.executeQuery();
			if(rs.next()){
				return true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public void createAccountTable() {
		String sql="CREATE TABLE account ("
				+ "email_id varchar(50) NOT NULL PRIMARY KEY,"
				+ "pass varchar(50) NOT NULL);"
				+ "INSERT INTO account VALUES "
				+ "('admin@knobsandknockers.com', 'admin'), "
				+ "('rmv001@marietta.edu', 'vanCamp'), "
				+ "('customer@gmail.com', '123')";
				
		try {
			Class.forName("org.postgresql.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			PreparedStatement st = con.prepareStatement(sql);
			st.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void dropAccountTable() {
		String sql="drop table account";
		try {
			Class.forName("org.postgresql.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			PreparedStatement st = con.prepareStatement(sql);
			st.executeUpdate();	
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
