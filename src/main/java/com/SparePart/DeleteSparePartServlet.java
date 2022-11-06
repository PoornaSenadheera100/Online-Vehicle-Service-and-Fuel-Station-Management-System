package com.SparePart;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteSparePartServlet")
public class DeleteSparePartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private boolean isTrue;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// assigning details to servlet variables
		String id = request.getParameter("partId"); // name from updateSparePart file(line 24) goes inside the brackets

		isTrue = SparePartDBUtil.deleteSpareParts(id);

		if (isTrue == true) {
			List<SpareParts> sparePart = SparePartDBUtil.getAllSparePartDetails(); // line 21
			request.setAttribute("sparePart", sparePart);

			RequestDispatcher dis = request.getRequestDispatcher("SparePartDetails.jsp");
			dis.forward(request, response);
		}

		else {
			List<SpareParts> sparePart = SparePartDBUtil.getAllSparePartDetails(); // line 21
			request.setAttribute("sparePart", sparePart);

			RequestDispatcher dis = request.getRequestDispatcher("SparePartDetails.jsp");
			dis.forward(request, response);
		}
	}

}
