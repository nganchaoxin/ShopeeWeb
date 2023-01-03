package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import config.Connect;
import entity.Products;
import entity.Users;
import service.ProductService;

/**
 * Servlet implementation class UserInterface
 */
@WebServlet("/UserInterface")
public class UserInterface extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Users user = (Users) session.getAttribute("user-session");

		Connection connection = Connect.openConnect();

		ArrayList<Products> products = new ArrayList<Products>();

		Statement stmt;
		try {
			stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery("select id, name, price, img from products ");

			while (rs.next()) {
				// System.out.println(rs.getInt(1) + " " + rs.getString(2) + " " +
				// rs.getDouble(3)+" "+ rs.getString(4));

				products.add(new Products(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4)));
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

		request.setAttribute("arrayProduct", products);

		request.setAttribute("username", user.getUsername());

		RequestDispatcher dispatcher = request.getRequestDispatcher("/UserInterface.jsp");
		dispatcher.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
