package com.kadeGroup;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LoginDao dao = new LoginDao();
		String username = (String) request.getParameter("username");
		String password = (String) request.getParameter("password");
		PrintWriter out = response.getWriter();
		RequestDispatcher rd = request.getRequestDispatcher("welcome.jsp");
		if(dao.checkCredentials(username, password)) {
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			response.sendRedirect("secure.jsp");
		}
		else {
			request.setAttribute("msg", "Wrong credentials");
			doGet(request, response);
		}
	}

}
