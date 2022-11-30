package com.kadeGroup;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ReviewDao {
	public ReviewDao() {
	}
	String url = "jdbc:postgresql://localhost:5432/gp405";
	String username = "knob";
	String password = "badpassword";
	public void createReviewTable() {
		String sql="CREATE TABLE review ("
				+ "	review_id SERIAL NOT NULL PRIMARY KEY,"
				+ "	email_id VARCHAR(50) NOT NULL CONSTRAINT fk_review_account REFERENCES account (email_id),"
				+ "	product_id SMALLINT NOT NULL,"
				+ "	review_text TEXT NOT NULL,"
				+ "	stars SMALLINT NOT NULL"
				+ ")";
				
		try {
			Class.forName("org.postgresql.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			PreparedStatement st = con.prepareStatement(sql);
			st.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void dropReviewTable() {
		String sql="drop table review";
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
