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
				+ ");"
				+ "INSERT INTO REVIEW (email_id, product_id, review_text, stars) VALUES "
				+ "('customer@gmail.com', 1, 'Dropped it on the floor and it broke. Overpriced crap >:(', 1),"
				+ "('rmv001@marietta.edu', 1, 'Pppfffffff PFfft THPPTPHTPHPHHP\r\n"
				+ "Ppppffpppf. Pppppt\r\n"
				+ "BRRRRAAAAAPPPFfFft!!!!!!!\r\n"
				+ "', 4),"
				+ "('customer@gmail.com', 2, 'Mushrooooommmmm :D', 5),"
				+ "('customer@gmail.com', 3, 'Okay i guess :|', 3),"
				+ "('customer@gmail.com', 4, 'Paint comes off easily :(', 2)";
				
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
