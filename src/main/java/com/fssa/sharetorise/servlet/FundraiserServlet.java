package com.fssa.sharetorise.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.sharetorise.model.FundRaiser;
import com.fssa.sharetorise.model.User;
import com.fssa.sharetorise.service.FundraiserService;

/**
 * Servlet implementation class FundraiserServlet
 */

//@WebServlet("/FundraiserServlet")
public class FundraiserServlet extends HttpServlet {

	public FundraiserServlet() {

	}

	private static final long serialVersionUID = 1L;

	FundraiserService service = new FundraiserService();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		User user  = (User) session.getAttribute("obj");
		List<FundRaiser> allFund = service.readAllFundraiser();

		request.setAttribute("FundraiserList", allFund);

		RequestDispatcher dispatcher = request.getRequestDispatcher("./BrowserFundraiser.jsp");
		dispatcher.forward(request, response);

	}

}
