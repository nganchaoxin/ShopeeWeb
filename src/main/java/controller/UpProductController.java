package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Products;
import service.ProductService;

/**
 * Servlet implementation class UpProductController
 */
@WebServlet("/update")
public class UpProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpProductController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");

		Products updateProduct = ProductService.findProductById(Integer.valueOf(id));

		request.setAttribute("updateProduct", updateProduct);
		System.out.println("Update controller Get");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/updateProduct.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		if (request.getParameter("Action").equals("Update")) {
			System.out.println("Update controller Post");
			PrintWriter printWriter = response.getWriter();

			ProductService productService = new ProductService();

			Products product = new Products();

			product.setId((Integer.valueOf(request.getParameter("id"))));
			product.setImg((request.getParameter("img")));
			product.setName((request.getParameter("name")));
			product.setPrice(Double.parseDouble(request.getParameter("price")));

			boolean result = productService.updateProduct(product);

			System.out.println(result);

			RequestDispatcher dispatcher = request.getRequestDispatcher("/updateProduct.jsp");
			dispatcher.include(request, response);

			printWriter.print("<br><h2>Product updated Successfully!!</h2>");
			response.sendRedirect("/ShopeeWeb/ManagementController");

		}
		

	}

}
