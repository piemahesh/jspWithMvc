package jspTutorial.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.ServletException;

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
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        try {
            ResultSet rs = new UserDao().getAllUsers(); // Get data from DAO
            req.setAttribute("resultSet", rs); // Bind ResultSet to request attribute
        } catch (Exception e) {
            req.setAttribute("error", "Error fetching user data.");
        }
        // Forward the request to the JSP for rendering
        req.getRequestDispatcher("/view/userListWrapper.jsp").forward(req, res);
    }

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		String name = req.getParameter("username");
		String password = req.getParameter("password");
		Integer age = Integer.parseInt(req.getParameter("age"));
		User user = new User(name, password, age);
		new UserDao(user).createUser();
		System.out.println(user.toString());
		res.sendRedirect("user");
	}

	@Override
	public void destroy() {
		System.out.println("im destroyed");
	}

}
