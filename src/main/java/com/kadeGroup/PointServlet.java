package com.kadeGroup;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/points")
public class PointServlet extends HttpServlet {
	String validCodes = "asdf123" + "admin420";
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		res.sendRedirect("index.jsp");
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		
		
		HttpSession httpSession = req.getSession();
		httpSession.setAttribute("codeInvalid", "");
		if(httpSession.getAttribute("points") == null) {
			httpSession.setAttribute("points", 0);
		}
		String code = req.getParameter("code");
		if (code != null) {
			int currentPoints = (Integer) httpSession.getAttribute("points");
			int points = 0;
			if(validCodes.contains(code)) {
				validCodes.replace(code, "");
				points = 10;
			} else {
				httpSession.setAttribute("codeInvalid", "Invalid code");
			}
			httpSession.setAttribute("points", currentPoints + points);
		}
		System.out.println((Integer) httpSession.getAttribute("code"));
	}
}
