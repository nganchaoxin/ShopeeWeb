package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.Cart;
import entity.Products;
import entity.Users;
import service.ProductService;

/**
 * Servlet implementation class AddIntoCart
 */
@WebServlet("/AddIntoCart")
public class AddIntoCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// product_id
		String product_id = request.getParameter("id");
		int sproduct_id = Integer.parseInt(product_id);
	
		// findProductById
		Products productCart = ProductService.findProductById(sproduct_id);
		
	
		// user-session
		HttpSession session = request.getSession();
		Users user = (Users) session.getAttribute("user-session");
		int user_id = user.getId();
		
		ProductService.addIntoCart(productCart, user_id);
		
		ArrayList<Cart> arrayCart = ProductService.getProductCart();
		
		request.setAttribute("arrayCart", arrayCart);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/Cart.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
