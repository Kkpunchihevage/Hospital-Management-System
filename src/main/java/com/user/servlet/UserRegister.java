package com.user.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.dao.UserDAO;
import com.db.DBConnect;
import com.entity.User;

@WebServlet("/user_register")
public class UserRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String fullName =request.getParameter("fullName");
			String email =request.getParameter("email");
			String password =request.getParameter("password");
			
			User user=new User(fullName,email,password);
			
			UserDAO dao= new UserDAO(DBConnect.getConn());
			HttpSession se=request.getSession();
			
			boolean f=dao.register(user);
			
			if(f) {
				se.setAttribute("successMsg","Register Successfully." );
				response.sendRedirect("signup.jsp");
				
			
			}else {
				se.setAttribute("errorMsg","Something wrong" );
				response.sendRedirect("signup.jsp");
				
			}
			
			

			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
