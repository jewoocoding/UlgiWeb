package com.ulgi.lease.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;

import com.ulgi.lease.model.service.LeaseService;
import com.ulgi.lease.model.vo.Library;

/**
 * Servlet implementation class LeaseInsertServlet
 */
@WebServlet("/lease/insert")
public class LeaseInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LeaseInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/lease/insert.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int leaseNo = Integer.parseInt( request.getParameter("leaseNo"));
		int bookNo = Integer.parseInt(request.getParameter("bookNo"));
		String userId = request.getParameter("userId");
		Library library = new Library(leaseNo, bookNo, userId);
		
		int result = new LeaseService().insertLease(library);
		if( result > 0) {
			response.sendRedirect("/lease/list");
		}else {
			request.getRequestDispatcher("/WEB-INF/views/common/error.jsp").forward(request, response);
		}
	}

}
