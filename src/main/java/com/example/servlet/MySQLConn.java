package com.example.servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConn {
	  
	 public static Connection getMySQLConnection() throws SQLException,
	         ClassNotFoundException {
	     // Note: Change the connection parameters accordingly.
	     String hostName = "localhost";
	     String dbName = "test";
	     String userName = "root";
	     String password = "12345";
		 Class.forName("com.mysql.cj.jdbc.Driver");
		 String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName;
		  
	     Connection conn = DriverManager.getConnection(connectionURL, userName,
	             password);
         return conn;
	 }
}
