package com.kadeGroup;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class MyServletContextListener implements ServletContextListener {
	LoginDao loginDao = new LoginDao();
	ReviewDao reviewDao = new ReviewDao();

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println("Shutting down");
		reviewDao.dropReviewTable();
		loginDao.dropAccountTable();
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		System.out.println("Starting up");
		loginDao.createAccountTable();
		reviewDao.createReviewTable();
	}
}
