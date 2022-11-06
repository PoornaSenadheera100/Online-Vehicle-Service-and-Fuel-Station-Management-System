package com.FuelTank;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ViewAllTanksServlet
 */
@WebServlet("/ViewAllTanksServlet")
public class ViewAllTanksServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List <FuelTank>fuelTanks=FuelTankDbUtil.getAllTankDetails();
		request.setAttribute("fuelTanks", fuelTanks);
		
		RequestDispatcher dis=request.getRequestDispatcher("viewFuelTank.jsp");
		dis.forward(request, response);
		
	}

}
