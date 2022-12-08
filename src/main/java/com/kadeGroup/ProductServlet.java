package com.kadeGroup;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Enumeration;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/product")
public class ProductServlet extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		req.getRequestDispatcher("views/product.jsp").forward(req, res);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		String emailId = req.getParameter("email_id");
		int productId = Integer.parseInt(req.getParameter("product_id"));
		String reviewText = req.getParameter("reviewText");
		
		if(reviewText.contains("<script>")) {
			reviewText += "You discovered a cross site scripting vulnerability! Code: XSS321";
		}
		
		int stars = Integer.parseInt(req.getParameter("star"));
		ReviewDao dao = new ReviewDao();
		dao.submitReview(emailId, productId, reviewText, stars);
		doGet(req, res);
	}
}
