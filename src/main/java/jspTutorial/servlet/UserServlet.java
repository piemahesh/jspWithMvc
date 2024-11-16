package jspTutorial.servlet;

//import java.io.IOException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jspTutorial.dao.UserDao;
import jspTutorial.model.User;

@WebServlet("/user")
public class UserServlet extends HttpServlet {

	@Override
	public void init() {
		System.out.println("im init");
	}

	private static final long serialVersionUID = 2227258756592886912L;

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) {
		System.out.println("hello");

	}

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res) {
		String name = req.getParameter("username");
		String password = req.getParameter("password");
		Integer age = Integer.parseInt(req.getParameter("age"));
		User user = new User(name, password, age);
		new UserDao(user).createUser();
		System.out.println(user.toString());
		
	}

	@Override
	public void destroy() {
		System.out.println("im destroyed");
	}

}
