package com.user.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet implementation class UserLogout
 */
@WebServlet("/userLogout")
public class UserLogout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			HttpSession session=request.getSession();
			session.removeAttribute("userObj");
			session.setAttribute("successMsg", "User logout successfully.");
			response.sendRedirect("user.jsp");
		}
	}

	


