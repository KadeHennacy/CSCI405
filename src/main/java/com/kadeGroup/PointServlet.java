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
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		res.sendRedirect("index.jsp");
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HttpSession httpSession = req.getSession();
		if(httpSession.getAttribute("codes") == null) {
			httpSession.setAttribute("codes", "asdf123" + "admin99" + "ErrorVulnerability" + "XSS321");
		}
		if(httpSession.getAttribute("usedCodes") == null) {
			httpSession.setAttribute("usedCodes", "");
		}
		httpSession.setAttribute("codeInvalid", "");
		if(httpSession.getAttribute("points") == null) {
			httpSession.setAttribute("points", 0);
		}
		String code = req.getParameter("code");
		String validCodes = (String) httpSession.getAttribute("codes");
		String usedCodes = (String) httpSession.getAttribute("usedCodes");
		if (code != null) {
			int currentPoints = (Integer) httpSession.getAttribute("points");
			int points = 0;
			if(validCodes.contains(code)) {
				validCodes = validCodes.replace(code, "");
				httpSession.setAttribute("codes", validCodes);
				usedCodes += code;
				httpSession.setAttribute("usedCodes", usedCodes);
				points = 10;
			} else if(usedCodes.contains(code)){
				httpSession.setAttribute("codeInvalid", "Code already used");
			}
			else {
				httpSession.setAttribute("codeInvalid", "Invalid code");
			}
			httpSession.setAttribute("points", currentPoints + points);
		}
	}
}
