package com.SparePart;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SparePartInsert")
public class SparePartInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private boolean isTrue;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

		// Storing passed details in variables

		String id = request.getParameter("partId");
		String category = request.getParameter("category");
		String pName = request.getParameter("partName");
		String qty = request.getParameter("qty");
		String cost = request.getParameter("price");

		// parsing
		int tQty = Integer.parseInt(qty);
		double tCost = Double.parseDouble(cost);

		isTrue = SparePartDBUtil.insertSpareParts(id, category, pName, tQty, tCost);

		if (isTrue == true) {
			/*List<SpareParts> sparePart = SparePartDBUtil.getAllSparePartDetails(); // line 21
			request.setAttribute("sparePart", sparePart);

			RequestDispatcher dis = request.getRequestDispatcher("SparePartDetails.jsp");
			dis.forward(request, response);
			*/
			 RequestDispatcher dis = request.getRequestDispatcher("successSpareParts.jsp"); //the page it will go to if this is successful 
			 dis.forward(request, response);
		}

		else {
			/*List<SpareParts> sparePart = SparePartDBUtil.getAllSparePartDetails(); // line 21
			request.setAttribute("sparePart", sparePart);

			RequestDispatcher dis = request.getRequestDispatcher("SparePartDetails.jsp");
			dis.forward(request, response);
			*/

			
			 RequestDispatcher dis = request.getRequestDispatcher("unsuccessSpareParts.jsp"); //the page it will go to if this is unsuccessful 
			 dis.forward(request, response);
		}
	}

}
