package jspTutorial.dao;

import java.sql.*;

import jspTutorial.model.User;
import jspTutorial.util.DatabaseConnection;

public class UserDao {

	Connection cursor = DatabaseConnection.getConnection();
	User user;

	public UserDao(User user) {
		this.user = user;
	}

	public void createUser() {
		String query = "insert into users(username,password,age) values (?,?,?)";
		try {
			PreparedStatement ps = cursor.prepareStatement(query);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			ps.setInt(3, user.getAge());
			int rows = ps.executeUpdate();
			if (rows > 0) {
				System.out.println("user created successfully");
			} else {
				System.out.println("something went wrong");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	
	public void getAllUser() {
		
	}

}
