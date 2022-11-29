package com.kadeGroup;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

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
		
	}
}
