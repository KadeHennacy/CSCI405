package com.kadeGroup;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/DemoServlet")
public class DemoServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		Student[] students = {
				new Student(1,"Kade"),
				new Student(2,"Bob"),
				new Student(3,"Joe"),
				new Student(4,"Jane"),
				new Student(5,"Nigward")
		};
		RequestDispatcher rd = request.getRequestDispatcher("demo.jsp");
		
		request.setAttribute("students", students);
		
		rd.forward(request, response);	
	}

}
