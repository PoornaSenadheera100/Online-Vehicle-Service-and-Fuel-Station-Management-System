package com.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class CustomerRequestDetails
 */
@WebServlet("/CustomerRequestServlet")
public class CustomerRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String username = request.getParameter("username");
		
	
		
		List<service> serviceRequest = serviceDBUtil.getRequestDetails(username);
		request.setAttribute("serviceRequest", serviceRequest);
			
		RequestDispatcher dis = request.getRequestDispatcher("viewMyRequests.jsp");
		dis.forward(request, response);
		
		
		
	}

}
