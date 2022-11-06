package com.SparePart;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SparePartDetailsServlet")
public class SparePartDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<SpareParts> sparePart = SparePartDBUtil.getAllSparePartDetails();
		request.setAttribute("sparePart", sparePart);

		RequestDispatcher dis = request.getRequestDispatcher("SparePartDetails.jsp");
		dis.forward(request, response);
	}

}
