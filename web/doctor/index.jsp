<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.entity.Doctor" %>
<%@ page import="com.dao.DoctorDAO" %>
<%@ page import="com.db.DBConnect" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Dashboard</title>
<%@include file="../component/allcss.jsp" %>

<style>
body {
    background-image: url('../image/doctor1.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center center;
    background-attachment: fixed;
    margin: 0;
    padding: 0;
    min-height: 100vh;
}
.poin-card {
    box-shadow: 0 0 10px rgba(0,0,0,0.3);
    border-radius: 10px;
}
</style>
</head>
<body>

<c:if test="${empty doctObj}">
    <c:redirect url="../doctor.jsp"/>
</c:if>

<%@include file="navbar.jsp" %>

<p class="text-center fs-3">Doctor Dashboard</p>

<%
Doctor d = (Doctor) session.getAttribute("doctObj");
DoctorDAO dao = new DoctorDAO(DBConnect.getConn());
%>

<div class="container p-5">
  <div class="row">

    <div class="col-md-4 offset-md-2">
      <div class="card poin-card" data-bs-toggle="modal" data-bs-target="#exampleModal">
        <div class="card-body text-center text-success">
          <i class="fa-solid fa-user-doctor"></i>
          <p class="fs-4 text-center">Doctor<br> <%= dao.countDoctor() %></p>
        </div>
      </div>
    </div>

    <div class="col-md-4">
      <div class="card poin-card" data-bs-toggle="modal" data-bs-target="#exampleModal">
        <div class="card-body text-center text-success">
          <i class="fa-solid fa-calendar-check"></i>
          <p class="fs-4 text-center">Total Appointment<br> <%= dao.countAppointmentByDoctorId(d.getId()) %></p>
        </div>
      </div>
    </div>

  </div>
</div>

</body>
</html>
