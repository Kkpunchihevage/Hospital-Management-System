package com.admin.servlet;

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


@WebServlet("/addDoctor")
public class AddDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			String fullName=request.getParameter("fullName");
			String dob=request.getParameter("dob");
			String qualification=request.getParameter("qualification");
			String specialist=request.getParameter("specialist");
			String email=request.getParameter("email");
			String phoneNo=request.getParameter("phoneNo");
			String password=request.getParameter("password");
			Doctor d=new Doctor( fullName,dob,qualification,specialist,email,phoneNo,password);
			
			DoctorDAO dao=new DoctorDAO(DBConnect.getConn());
			HttpSession session=request.getSession();
			if(dao.registerDoctor(d)) {
				session.setAttribute("successMsg","Doctor Added Successfully." );
				response.sendRedirect("admin/doctor.jsp");
			}else {
				session.setAttribute("errorMsg", "Somthing wrong.");
				response.sendRedirect("admin/doctor.jsp");
				
			} 
				
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
