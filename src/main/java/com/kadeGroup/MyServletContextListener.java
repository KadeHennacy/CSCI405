package com.kadeGroup;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

// this can run code before deploying and right before it shuts down. The plan is to create the database and destroy it each run so nobody needs to worry about syncing it.


public class MyServletContextListener implements ServletContextListener {

		  @Override
		  public void contextDestroyed(ServletContextEvent arg0) {
			  LoginDao dao = new LoginDao();
			  dao.dropAccountTable();
		  }

		  @Override
		  public void contextInitialized(ServletContextEvent arg0) {
			  LoginDao dao = new LoginDao();
			  dao.createAccountTable();
		  }
}
