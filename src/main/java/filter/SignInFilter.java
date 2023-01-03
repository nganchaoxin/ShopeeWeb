package filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.Products;
import entity.Users;
import service.ProductService;

/**
 * Servlet Filter implementation class SignInFilter
 */
@WebFilter("/*")
public class SignInFilter implements Filter {

	/**
	 * Default constructor.
	 */
	public SignInFilter() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		List<String> url = List.of("/HomeController");
		List<String> forAdmin = List.of("/ManagementController");
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponse httpResponse = (HttpServletResponse) response;

		boolean isStaticResource = httpRequest.getRequestURI().startsWith("/ShopeeWeb/Resources/");

		HttpSession session = ((HttpServletRequest) request).getSession();
		Users sessionVal = (Users) session.getAttribute("user-session");

		String path = httpRequest.getServletPath();

		if ((Users) sessionVal == null && !url.contains(path) && !isStaticResource) {
			// httpResponse.sendError(HttpServletResponse.SC_UNAUTHORIZED);
			
			// httpResponse.sendRedirect(httpRequest.getContextPath() + "/OutController");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/OutController");
			dispatcher.forward(request, response);
		} else if (sessionVal != null) {
			// role = admin
			if (sessionVal.getRole() == true) {
				chain.doFilter(request, response);
			} else {
				// role = user
				if (forAdmin.contains(path)) {
					// not contain this url -> dont have access
					httpResponse.sendError(HttpServletResponse.SC_UNAUTHORIZED);
				} else {
					chain.doFilter(request, response);
				}
			}
		}

		else {
			chain.doFilter(request, response);
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
