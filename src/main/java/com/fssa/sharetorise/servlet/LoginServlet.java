package com.fssa.sharetorise.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.sharetorise.exceptions.DAOException;
import com.fssa.sharetorise.exceptions.InvalidInputException;
import com.fssa.sharetorise.exceptions.ServiceException;
import com.fssa.sharetorise.service.UserService;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String useremail = request.getParameter("useremail");
		String userpassword = request.getParameter("password");
		
		
		UserService userservice = new UserService();
		
		try {
			userservice.login(useremail, userpassword);
			response.sendRedirect("FundraiserServlet");
		}
		catch(InvalidInputException | DAOException | SQLException e) {
    		
    		System.out.println(e.getMessage());
    		e.printStackTrace();
    		System.out.println("user registered successfully");
    	} 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
	}

}
