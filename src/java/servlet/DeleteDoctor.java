package com.admin.servlet;

import java.io.IOException;

import com.dao.DoctorDAO;
import com.db.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/deleteDoctor")
public class DeleteDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		
		DoctorDAO dao=new DoctorDAO(DBConnect.getConn());
		HttpSession session=request.getSession();
		if(dao.deleteDoctor(id)) {
			session.setAttribute("successMsg","Doctor Delete Successfully." );
			response.sendRedirect("admin/view_doctor.jsp");
		}else {
			session.setAttribute("errorMsg", "Somthing wrong.");
			response.sendRedirect("admin/view_doctor.jsp");
			
		} 
			
		
		
	}
}

	
	


