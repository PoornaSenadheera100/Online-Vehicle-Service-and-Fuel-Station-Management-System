package com.admin;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminLoginServlet
 */
@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String username = request.getParameter("loginUsername");
		String password = request.getParameter("loginPassword");
		
		try {
			boolean status = AdminDBUtil.validate(username, password);
			
			if(status == true) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("adminHome.jsp");
				dispatcher.forward(request, response);
			}
			else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("adminLogFail.jsp");
				dispatcher.forward(request, response);
			}
			
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}

}
