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


// User goes to 405GP/login.jsp and the action of the form on that page is 'loginServlet' which is mapped to this class in web.xml. So we receive a post request in this class with the credentials when the user submits the login.jsp form. We validate the credentials in this class, and we forward the request and response to either a welcome.jsp or forgotpassword.jsp file. 
public class LoginServlet extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		req.getRequestDispatcher("views/login.jsp").forward(req, res);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		String emailId = req.getParameter("emailId");
        String password = req.getParameter("password");
        System.out.println("emailId.." + emailId);
        System.out.println("password.." + password);
        if (emailId != null && emailId.equalsIgnoreCase("admin@gmail.com") && password != null && password.equalsIgnoreCase("admin")) {
            HttpSession httpSession = req.getSession();
            httpSession.setAttribute("isLoggedIn", true);
            httpSession.setAttribute("emailId", emailId);
        	req.getRequestDispatcher("views/welcome.jsp").forward(req, res);
        }
//        This is just for the demo, no SQL is run yet since we need to set up DB
        if(emailId.contains("OR 1=1")){
        	req.getRequestDispatcher("views/hacked.jsp").forward(req, res);
        }
	}
}
