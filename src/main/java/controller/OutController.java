package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.Users;
import service.ProductService;


@WebServlet("/OutController")
public class OutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		HttpSession session = request.getSession();
//		Users user = (Users) session.getAttribute("user_session");
//		
//		if (user.getUsername() != null) {
//			response.sendRedirect("/ShopeeWeb/HomeController");
//		}
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/signIn.jsp");
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("Username");
		String password = request.getParameter("Password");
		
		Users user = ProductService.findUsernameAndPassword(username, password);
		System.out.println("chay qua out controller");
		
		if (user!=null) {
			System.out.println("Log in success!");
			
			HttpSession session = request.getSession();
			session.setAttribute("user-session", user);
			//System.out.println(username + password);
			//session.removeAttribute("user-session");
			
			response.sendRedirect("/ShopeeWeb/UserInterface");
		} 
		else {
			System.out.println("Fail!");
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/signIn.jsp");
			dispatcher.forward(request, response);
			
		}
		
		
		
	}

}
