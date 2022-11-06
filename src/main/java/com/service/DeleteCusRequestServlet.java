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
 * Servlet implementation class DeleteCusRequestServlet
 */
@WebServlet("/DeleteCusRequestServlet")
public class DeleteCusRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//data passed from the delete jsp should be passed and fetched by the delete servlet page.
		//serviceID and email from the form is assigned to relevant variables.
		String serviceID = request.getParameter("serviceID");
		String email = request.getParameter("email");
		//only need to the primary key to delete the request, so no need to create variables for all parameters or fields.
		
		boolean isTrue = serviceDBUtil.deleteRequest(serviceID);
		//pass the id as a parameter
		
		if (isTrue == true) {
			//check if the isTrue is true
			List<service> serviceRequest = serviceDBUtil.getRequestDetails(email);
			//once requestDetails are obtained, the variable "serviceRequest" holds all those values.
			request.setAttribute("serviceRequest", serviceRequest);
					
			RequestDispatcher dis = request.getRequestDispatcher("viewMyRequests.jsp");
			//NAVIGATES TO VIEWMYREQUEST.jsp page
			dis.forward(request, response);
		}
		else {
					
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			//if unsuccessful --> navigate to signup fail page
			dis.forward(request, response);
		}
		
		
	}

}
