package com.fssa.sharetorise.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.sharetorise.exceptions.DAOException;
import com.fssa.sharetorise.model.FundRaiser;
import com.fssa.sharetorise.service.FundraiserService;

/**
 * Servlet implementation class PlayerDetailsServlet
 */
public class PlayerDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("emer_id"));

		
		
		FundraiserService fundraiserService = new FundraiserService();

		
		try {
	        // Use the FundraiserService to get the Fundraiser by ID
	        FundRaiser fundraiser = fundraiserService.getFundraiserById(id);
	
	        if (fundraiser != null) {
	            // Set the Fundraiser object as an attribute in the request scope
	            request.setAttribute("fundraiser", fundraiser);
	
	            System.out.println(fundraiser);
	            
	            request.getRequestDispatcher("/UrlParamsFundrasierPage.jsp").forward(request, response);
	        }
		}
		catch(DAOException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
