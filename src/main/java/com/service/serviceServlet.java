package com.service;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class serviceServlet
 */
@WebServlet("/serviceServlet")
public class serviceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//all details in the form assigned to specific variables
		String email = request.getParameter("email");
		String vehNum = request.getParameter("vehNum");
		String date = request.getParameter("appDate");
		String name = request.getParameter("service");
		String model = request.getParameter("model");
		
		boolean isTrue;
		//pass the values to the insert details method.
		//insert service details method returns a boolean value --> this return is stored in "is true" variable.
		isTrue = serviceDBUtil.insertservicedetails(name, vehNum, model, date, email);
		
		if(isTrue == true) {
			
			//if database connection is true --> data is inserted.
			RequestDispatcher dis = request.getRequestDispatcher("successRequest.jsp");
			//navigate to successRequest.jsp
			dis.forward(request, response);
		} else {
			//if database connection not successful
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			//navigate to unsuccess.jsp
			dis2.forward(request, response);
		}
		
		
	}

}
		
		

	 