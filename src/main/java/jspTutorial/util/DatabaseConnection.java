package jspTutorial.util;

import java.sql.*;


public class DatabaseConnection {

	final static String USERNAME = "root";
	final static String PASSWORD = "root";
	final static String URL = "jdbc:mysql://localhost:3306/javaLearn";

	public static Connection getConnection()  {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			return con;
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
