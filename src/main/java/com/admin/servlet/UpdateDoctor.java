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


@WebServlet("/updateDoctor")
public class UpdateDoctor extends HttpServlet {
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
			
			int id=Integer.parseInt(request.getParameter("id"));
			Doctor d=new Doctor(id, fullName,dob,qualification,specialist,email,phoneNo,password);
			
			DoctorDAO dao=new DoctorDAO(DBConnect.getConn());
			HttpSession session=request.getSession();
			if(dao.updateDoctor(d)) {
				session.setAttribute("successMsg","Doctor Update Successfully." );
				response.sendRedirect("admin/view_doctor.jsp");
			}else {
				session.setAttribute("errorMsg", "Somthing wrong.");
				response.sendRedirect("admin/view_doctor.jsp");
				
			} 
				
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
