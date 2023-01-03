package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.Products;
import entity.Student;
import entity.Users;
import service.ProductService;

@WebServlet("/ManagementController")

public class ManagementController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ManagementController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			response.setContentType("text/html;charset=UTF-8");
			request.setCharacterEncoding("UTF-8");
			ProductService productService = new ProductService();
			ArrayList<Products> product = productService.getAllProducts();
		
			request.setAttribute("productList", product);

			RequestDispatcher dispatcher = request.getRequestDispatcher("/productList2.jsp");
			dispatcher.forward(request, response);
		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		// Get Data
		if (request.getParameter("Action").equals("Add Product")) {
			System.out.println("In controller");
			PrintWriter printWriter = response.getWriter();

			Products product = new Products();
			ProductService productService = new ProductService();


			product.setImg((request.getParameter("img")));
			product.setName((request.getParameter("name")));
			product.setPrice(Double.parseDouble(request.getParameter("price")));

			boolean result = productService.addProduct(product);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("addProduct.jsp");
			dispatcher.include(request, response);
			
			printWriter.print("<br><h2>Product added Successfully!!</h2>");
			response.sendRedirect("/ShopeeWeb/ManagementController");

			
		}


	}

}