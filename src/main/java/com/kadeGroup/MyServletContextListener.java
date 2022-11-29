package com.kadeGroup;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

// this can run code before deploying and right before it shuts down. The plan is to create the database and destroy it each run so nobody needs to worry about syncing it.


public class MyServletContextListener implements ServletContextListener {

		  @Override
		  public void contextDestroyed(ServletContextEvent arg0) {
			  System.out.println("Shutting down");
		    //Notification that the servlet context is about to be shut down.   
		  }

		  @Override
		  public void contextInitialized(ServletContextEvent arg0) {
		    // do all the tasks that you need to perform just after the server starts

		    //Notification that the web application initialization process is starting
			  
			  System.out.println("Starting up");
		  }
}
