package com.admin.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.entity.User;


@WebServlet("/adminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			
			HttpSession session=request.getSession();
			
			if("admin@gmail.com".equals(email) && "admin".equals(password))
			{
				session.setAttribute("adminObj", new User());
				response.sendRedirect("admin/index.jsp");
			}else {
				session.setAttribute("errorMsg", "Invalid email & password");
				response.sendRedirect("admin.jsp");
			}
		}catch (Exception e){
			e.printStackTrace();
			
		}
	}

}
