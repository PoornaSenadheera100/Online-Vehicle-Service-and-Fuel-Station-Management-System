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
 * Servlet implementation class UpdateFuelTankServelet
 */
@WebServlet("/UpdateFuelTankServelet")
public class UpdateFuelTankServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		

String TankID=request.getParameter("TankID");
String TankCapacity=request.getParameter("TankCapacity");
String CurrentTankCapacity=request.getParameter("CurrentTankCapacity");
String RefilledDate=request.getParameter("RefilledDate");
String EstimatedrefillDate=request.getParameter("EstimatedrefillDate");
String FuelType=request.getParameter("FuelType");

int tID = Integer.parseInt(TankID);
double tCapacity = Double.parseDouble(TankCapacity);
double ctCapacity = Double.parseDouble(CurrentTankCapacity);

boolean  isTrue = false;
isTrue=FuelTankDbUtil.updateFuelTank(tID,tCapacity,ctCapacity,RefilledDate,EstimatedrefillDate,FuelType);

if(isTrue==true) {
	
	List <FuelTank>fuelTanks=FuelTankDbUtil.getAllTankDetails();
	request.setAttribute("fuelTanks", fuelTanks);
	
	//Request Dispatcher cmd is used to move to another jsp from the existing jsp
	RequestDispatcher dis=request.getRequestDispatcher("viewFuelTank.jsp");
	dis.forward(request, response);
}
	else {
		
		RequestDispatcher dis2=request.getRequestDispatcher("unsuccessFuelTanks.jsp");
		dis2.forward(request, response);
	}

}
}
