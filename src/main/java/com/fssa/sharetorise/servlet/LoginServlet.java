package com.fssa.sharetorise.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.sharetorise.exceptions.DAOException;
import com.fssa.sharetorise.exceptions.InvalidInputException;
import com.fssa.sharetorise.logger.Logger;
import com.fssa.sharetorise.model.User;
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String useremail = request.getParameter("useremail");
		String userpassword = request.getParameter("password");

		
		
		UserService userservice = new UserService();
		
		try {
			
			User user=userservice.login(useremail, userpassword);
			
			HttpSession session = request.getSession();
			 session.setAttribute("obj",user);
			 
			 Logger.info(user);
			
			
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}
		catch(InvalidInputException | DAOException | SQLException e) {
    		
    		System.out.println(e.getMessage());
    		e.printStackTrace();
    		System.out.println("user registered successfully");
    	} 
	}


}
