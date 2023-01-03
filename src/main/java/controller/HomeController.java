package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import config.Connect;
import entity.Products;

@WebServlet("/HomeController")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public HomeController() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ArrayList<String> menuApp = new ArrayList<String>();
		
		menuApp.add("Thoi trang nam");
		menuApp.add("Thoi trang nam");
		menuApp.add("Thoi trang nam");
		menuApp.add("Thoi trang nam");
		menuApp.add("Thoi trang nam");
		menuApp.add("Thoi trang nam");
		menuApp.add("Thoi trang nam");
		menuApp.add("Thoi trang nam");
		menuApp.add("Thoi trang nam");
		menuApp.add("Thoi trang nam");
		menuApp.add("Thoi trang nam");
		
		menuApp.add("Thoi trang nam");
		menuApp.add("Thoi trang nam");
		menuApp.add("Thoi trang nam");
		menuApp.add("Thoi trang nam");
		menuApp.add("Thoi trang nam");
		menuApp.add("Thoi trang nam");
		menuApp.add("Thoi trang nam");
		menuApp.add("Thoi trang nam");
		
		
		request.setAttribute("menuApp", menuApp);
		
		Connection connection = Connect.openConnect();
		
		ArrayList<Products> products = new ArrayList<Products>();
		

		
		Statement stmt;
		try {
			stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery("select id, name, price, img from products ");
			
			while (rs.next()) {
			//System.out.println(rs.getInt(1) + "  " + rs.getString(2) + "  " + rs.getDouble(3)+" "+ rs.getString(4));
			
			products.add(new Products(rs.getInt(1) ,  rs.getString(2) , rs.getDouble(3), rs.getString(4)));
		}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

		
		request.setAttribute("arrayProduct", products);
		
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/home.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}

