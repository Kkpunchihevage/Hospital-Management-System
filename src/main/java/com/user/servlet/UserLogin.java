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


@WebServlet("/userLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		HttpSession session=request.getSession();
		UserDAO dao=new UserDAO(DBConnect.getConn());
		User user=dao.login(email, password);
		
		
		if(user!=null)
		{
			session.setAttribute("userObj", user);
			response.sendRedirect("index.jsp");
		}else {
			session.setAttribute("errorMsg", "Invalid email & password");
			response.sendRedirect("user.jsp");
		}
	}
}
