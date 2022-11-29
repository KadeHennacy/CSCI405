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
		LoginDao dao = new LoginDao();
		String emailId = req.getParameter("emailId");
        String password = req.getParameter("password");
        if(dao.checkCredentials(emailId, password)) {
            HttpSession httpSession = req.getSession();
            httpSession.setAttribute("emailId", emailId);
        	req.getRequestDispatcher("views/welcome.jsp").forward(req, res);
        }
        else {
        	req.setAttribute("msg", "Invalid credentials");
        	doGet(req, res);
        }
//        This is just for the demo, no SQL is run yet since we need to set up DB
        if(emailId.contains("OR 1=1")){
        	req.getRequestDispatcher("views/hacked.jsp").forward(req, res);
        }
	}
}
