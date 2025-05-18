package com.admin.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.dao.SpecialistDAO;
import com.db.DBConnect;


@WebServlet("/addSpecialist")
public class AddSpecialist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String specialistName=request.getParameter("specialistName");
		SpecialistDAO dao=new SpecialistDAO (DBConnect.getConn());
		boolean f=dao.addSpecialist(specialistName);
		
		HttpSession session=request.getSession();
		if(f)
		{
			session.setAttribute("successMsg","Specialist added.");
			response.sendRedirect("admin/index.jsp");
		}else {
			session.setAttribute("errorMsg", "Somthing wrong.");
			response.sendRedirect("admin/index.jsp");
	}

}
}