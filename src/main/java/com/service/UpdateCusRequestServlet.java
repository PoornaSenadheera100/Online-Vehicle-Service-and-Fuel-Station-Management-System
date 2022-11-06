package com.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//user in his service page ---> he updates his request or something.
//make a button ---> update ----> directed to update service page. ---> should pass the existing details from the Servicerequest to updateService jsp page.
//update jsp ---> what to update.
//after updating -->click submit --> update service servlet page ---> whatever that is updated is passsed to this servlet page ---> these data is passed to servicedbUtil --> this util page  has a method 
//in this method ---> tale gets updated with the updated records
//response sent ---> updated success --->succes.jsp
//response sent ---->updated unsuccessful ---->unsucces.jsp

/**
 * Servlet implementation class UpdateCusRequestServlet
 */
@WebServlet("/UpdateCusRequestServlet")
//data passed in the update jsp is passed to the update servlet.

public class UpdateCusRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String serviceID = request.getParameter("serviceID");
		//catches the service id passed from the update jsp to the update servlet.
		String serviceName = request.getParameter("service");
		//catches the service name passed from update jsp to update servlet. ---> and so on.
		String vehicleNum = request.getParameter("vehNum");
		String model = request.getParameter("model");
		String date = request.getParameter("expDate");
		String email = request.getParameter("email");
		
		boolean isTrue;
		
		isTrue = serviceDBUtil.updateRequest(serviceID, serviceName, vehicleNum, model, date, email);
		//for the relevant id, pass the parameters
		
		if(isTrue == true) {
			//if its success --> go to succes.jsp page
			//pass all details of the relevant service as a list.
			List<service> serviceRequest = serviceDBUtil.getRequestDetails(email);
			request.setAttribute("serviceRequest", serviceRequest);
			//first parameter should be of the same value as the one in the serviceacc.jsp in the setAttribute function
			RequestDispatcher dis = request.getRequestDispatcher("viewMyRequests.jsp");
			//can navigate to view request page, if successfully updated.
			dis.forward(request, response);
		}
		else {
			//pass all details of the relevant service as a list.
			List<service> serviceRequest = serviceDBUtil.getRequestDetails(email);
			request.setAttribute("serviceRequest", serviceRequest);
			
			//navigates to viewRequests.jsp page
			RequestDispatcher dis = request.getRequestDispatcher("viewMyRequests.jsp");
			dis.forward(request, response);
		}
		
	}

}
