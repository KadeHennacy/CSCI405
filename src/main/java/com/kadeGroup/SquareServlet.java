package com.kadeGroup;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SquareServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
//		Passing values with session
		HttpSession session = req.getSession();
		int k = (int) session.getAttribute("k");
		PrintWriter out = res.getWriter();
		out.println(k + "^2 = " + k * k);
	}

}
