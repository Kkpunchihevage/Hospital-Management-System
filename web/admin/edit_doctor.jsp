<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.dao.SpecialistDAO, com.entity.Specialist, com.db.DBConnect" %>
    
<%@ page import="java.util.*, com.dao.DoctorDAO, com.entity.Doctor, com.db.DBConnect" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.poin-card{
    box-shadow:0 0 10px 0 rgba(0,0,0.3);

}


</style>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container-fluid p-3">
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card point-card">
<div class="card-body">
<p class="text-center fs-3">Edit Doctor</p>
<c:if test="${not empty successMsg}">
<p class="text-center text-success fs-3">${successMsg}</p>
<c:remove var="successMsg" scope="session"/>

</c:if>

<c:if test="${ not empty errorMsg}">
<p class="text-center text-danger fs-3">${errorMsg}</p>
<c:remove var="errorMsg" scope="session"/>

</c:if>

<%

int id=Integer.parseInt(request.getParameter("id"));
DoctorDAO dao2=new DoctorDAO(DBConnect.getConn());
Doctor d=dao2.getDoctorById(id);

%>
<form action="../updateDoctor" method="post">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Full Name</label>
    <input type="text" required name="fullName" class="form-control" value="<%=d.getFullName() %>" id="fullName" aria-describedby="emailHelp">
    
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Date of Birth</label>
    <input type="date" required name="dob" class="form-control" value="<%=d.getDob()%>" id="dob">
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Qualification</label>
    <input type="text" required name="qualification" class="form-control" id="qualification" value="<%=d.getQualification() %>" aria-describedby="emailHelp">
    
  </div>
  <div class="col-md-3">
    <label for="validationDefault04" class="form-label">Specialist</label>
    <select class="form-select" id="validationDefault04" name="specialist"   required>
      <option selected disabled value=""><%=d.getSpecialist() %></option>
      
      <% SpecialistDAO dao=new SpecialistDAO(DBConnect.getConn());
    	  
      List<Specialist> list=dao.getAllSpecialist();
      for(Specialist s:list){%>
    		<option ><%=s.getSpecialistName() %></option>
      <%
      }
    		
      %>
     
    </select>
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email</label>
    <input type="email" required name="email" class="form-control" id="email" value="<%=d.getEmail()%>" aria-describedby="emailHelp">
    
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Phone No</label>
    <input type="text" required name="phoneNo" class="form-control" id="phoneNo" value="<%=d.getPhoneNo() %>" aria-describedby="emailHelp">
    
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Password</label>
    <input type="text" required name="password" class="form-control" id="password" value="<%=d.getPassword() %>" aria-describedby="emailHelp">
    
  </div>
  <input type="hidden" name="id" value="<%=d.getId() %>">
  
  <button type="submit" class="btn btn-primary col-md-12">Update</button>
</form>
</div>
</div>
</div>
    
   
    
    </div>
    </div>
    

</body>

</html>