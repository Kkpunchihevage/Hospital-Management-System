<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@page isELIgnored="false" %> 
<%@ page import="java.util.*, com.entity.Appointment, com.dao.AppointmentDAO, com.db.DBConnect, com.entity.Doctor" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Details</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.point-card{
   box-shadow:0 0 10px 0 rgba(0,0,0,0.3);
}
</style>
</head>
<body>
<c:if test="${empty doctObj}">
    <c:redirect url="../doctor.jsp"/>
</c:if>

<%@include file="navbar.jsp" %>

<div class="container p-3">
<div class="row">
<div class="col-md-12">
<div class="card point-card">
<div class="card-body">

<p class="text-center fs-3">Patient Details</p>
<c:if test="${not empty successMsg}">
<p class="text-center text-success fs-3">${successMsg}</p>
<c:remove var="successMsg" scope="session"/>

</c:if>

<c:if test="${ not empty errorMsg}">
<p class="text-center text-danger fs-3">${errorMsg}</p>
<c:remove var="errorMsg" scope="session"/>

</c:if>

<table class="table" >
<thead>
<tr>
      <th scope="col">Full Name</th>
      <th scope="col">Gender</th>
      <th scope="col">Age</th>
      <th scope="col">Appointment Date</th>
      <th scope="col">Email</th>
      <th scope="col">Phone No</th>
      <th scope="col">Diseases</th>
      <th scope="col">Status</th>
      <th scope="col">Action</th>
    
</tr>
</thead>
<tbody class="table table-striped table-hover">
<% 
Doctor d = (Doctor) session.getAttribute("doctObj");
AppointmentDAO dao = new AppointmentDAO(DBConnect.getConn());
List<Appointment> list = dao.getAllAppointmentByDoctor(d.getId());
for (Appointment ap : list) {
%>
<tr>
    <th><%= ap.getFullName() %></th>
    <td><%= ap.getGender() %></td>
    <td><%= ap.getAge() %></td>
    <td><%= ap.getAppoinDate() %></td>
    <td><%= ap.getEmail() %></td> 
    <td><%= ap.getPhoneNo() %></td>
    <td><%= ap.getDiseases() %></td>
    <td><%= ap.getStatus() %></td>
    <td><a href="comment.jsp?appid=<%= ap.getId() %>" class="btn btn-success btn-sm">Comment</a></td>
</tr>
<% 
}
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