package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Products;
import service.ProductService;

@WebServlet("/SearchController")


public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		try {
			String name = request.getParameter("name");
			String indexString = request.getParameter("index");
			int index = Integer.parseInt(indexString);
			
			int count = ProductService.count(name);
			int recordsPerPage = 3;
			int endPage = 0;
			
			endPage = count / recordsPerPage;
			
			if ( count % recordsPerPage != 0) {
				endPage++;
			}
			
			ArrayList<Products> listSearch = ProductService.search(name, index, recordsPerPage);
				
			request.setAttribute("endPage", endPage);
			request.setAttribute("listSearch", listSearch);
			request.setAttribute("name", name);

			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/searchProduct.jsp");
			dispatcher.include(request, response);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		try {
			String name = request.getParameter("name");
			String indexString = request.getParameter("index");
			int index = Integer.parseInt(indexString);
			
			int count = ProductService.count(name);
			int recordsPerPage = 3;
			int endPage = 0;
			
			endPage = count / recordsPerPage;
			
			if ( count % recordsPerPage != 0) {
				endPage++;
			}
			
			ArrayList<Products> listSearch = ProductService.search(name, index, recordsPerPage);
				
			request.setAttribute("endPage", endPage);
			request.setAttribute("listSearch", listSearch);
			request.setAttribute("name", name);

			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/searchProduct.jsp");
			dispatcher.include(request, response);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
	}

}
