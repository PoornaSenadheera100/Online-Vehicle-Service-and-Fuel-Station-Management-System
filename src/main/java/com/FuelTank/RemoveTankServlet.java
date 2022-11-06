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
 * Servlet implementation class RemoveTankServlet
 */
@WebServlet("/RemoveTankServlet")
public class RemoveTankServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String TankID = request.getParameter("TankID");
		boolean isTrue = false;

		isTrue=FuelTankDbUtil.RemoveFuelTank(TankID);

		if(isTrue==true){
			List <FuelTank>fuelTanks=FuelTankDbUtil.getAllTankDetails();
			request.setAttribute("fuelTanks", fuelTanks);
			
			//Request Dispatcher cmd is used to move to another jsp from the existing jsp
			RequestDispatcher dis=request.getRequestDispatcher("viewFuelTank.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dispatcher= request.getRequestDispatcher("unsuccessFuelTanks.jsp");
			dispatcher.forward(request,response);
		
	}

}
}
