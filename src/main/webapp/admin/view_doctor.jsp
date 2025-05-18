<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.dao.SpecialistDAO, com.entity.Specialist, com.db.DBConnect" %>
    
<%@ page import="java.util.*, com.dao.DoctorDAO, com.entity.Doctor, com.db.DBConnect" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Details</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
body {
            
            background-image: url('../image/doc.jpg'); 
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            
            
        }
.poin-card{
    box-shadow:0 0 10px 0 rgba(0,0,0.3);
    border-radius: 10px;
    
}

.content-section {
    background-color: #e6f2ff; 
    padding: 20px;
    border-radius: 10px;
    margin-top: 20px;
}



</style>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container content-section ">
<div class="row">

    
   <div class="col-md-12">
   <div class="card point-card">
   <div class="card-body">
   <p class="fs-3 text-center">Doctor Details</p>
   
   <c:if test="${not empty successMsg}">
<p class="text-center text-success fs-3">${successMsg}</p>
<c:remove var="successMsg" scope="session"/>

</c:if>

<c:if test="${ not empty errorMsg}">
<p class="text-center text-danger fs-3">${errorMsg}</p>
<c:remove var="errorMsg" scope="session"/>

</c:if>

   <table class="table">
   <thead>
   <tr>
       <th scope="col">Full Name</th>
       <th scope="col">DOB</th>
       <th scope="col">Qualification</th>
       <th scope="col">Specialist</th>
       <th scope="col">Email</th>
       <th scope="col">Phone No</th>
       <th scope="col">Action</th>
   
   
   </tr>
   
   </thead>
   
   <tbody>
         <% 
           DoctorDAO dao2=new DoctorDAO(DBConnect.getConn());
    		List<Doctor> dList=dao2.getAllDoctor();
    		for(Doctor d:dList)
    		{%>
    			<tr>
    			<td><%=d.getFullName() %></td>
    			<td><%=d.getDob() %></td>
    			<td><%=d.getQualification() %></td>
    			<td><%=d.getSpecialist() %></td>
    			<td><%=d.getEmail() %></td>
    			<td><%=d.getPhoneNo() %></td>
    			<td>
    			<a href="edit_doctor.jsp?id=<%=d.getId() %>" class="btn btn-sm btn-primary">Edit</a>
    			<a href="../deleteDoctor?id=<%=d.getId() %>" class="btn btn-sm btn-danger">Delete</a>
    			</td>
    			
    			</tr>
    		<%}
         %>  
   
   
   
   </tbody>
   </table>
   
    
    </div>
    </div>
    </div>
</div>
</div>
</body>

</html>