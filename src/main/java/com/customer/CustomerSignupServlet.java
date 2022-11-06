package com.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CustomerSignupServlet")
public class CustomerSignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String nic = request.getParameter("nic");
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.insertcustomer(username, name, address, nic, phone, password);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("signupSuccess.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("signupFail.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
