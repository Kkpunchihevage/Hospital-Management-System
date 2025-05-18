package com.doctor.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.dao.DoctorDAO;
import com.db.DBConnect;
import com.entity.Doctor;


@WebServlet("/doctorLogin")
public class DoctorLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		HttpSession session=request.getSession();
		DoctorDAO dao=new DoctorDAO(DBConnect.getConn());
		Doctor doctor=dao.login(email, password);
		
		
		if(doctor!=null)
		{
			session.setAttribute("doctObj", doctor);
			response.sendRedirect("doctor/index.jsp");
		}else {
			session.setAttribute("errorMsg", "Invalid email & password");
			response.sendRedirect("doctor.jsp");
		}
	}

}
