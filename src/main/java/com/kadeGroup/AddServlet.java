package com.kadeGroup;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddServlet extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		int i = 0, j = 0;
		i = Integer.parseInt(req.getParameter("num1"));
		j = Integer.parseInt(req.getParameter("num2"));

		int k = i + j;

		
//		Cookies
		
		Cookie cookie = new Cookie("k", k + "");
		
//		res.addCo
		
		
		
		
		
		
//		Passing values with session
//		HttpSession session = req.getSession();
//		session.setAttribute("k", k);
		
		res.sendRedirect("square");
		
//		res.sendRedirect("square?k=" + k); //url rewriting	
// 		Above is redirecting, below is forwarding. Forwarding sends the request to a different servlet wheras Redirecting changes the URL on the client browser and sends the request to that url. When a request is forwarded, the original request is passed through. When it's redirected it isn't so we need to rewrite the url if we want the k value to be passed to square servlet in the request.
//		RequestDispatcher rd = req.getRequestDispatcher("square");
//		rd.forward(req, res);
	}

}
