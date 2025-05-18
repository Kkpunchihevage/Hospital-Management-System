<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>comments</title>
<style type="text/css">
.point-card{
   box-shadow:0 0 10px 0 rgba(0,0,0,0.3);
}
</style>
<%@include file="../component/allcss.jsp" %>
</head>
<body>
<c:if test="${empty doctObj}">
    <c:redirect url="../doctor.jsp"/>
</c:if>

<%@include file="navbar.jsp" %>
<div class="container-fluid backImg p-5">
<p class="text-center fs-2 text-white">  </p>
</div>
<div class="container p-3">
<div class="row">
<div class="col-md-6 offset-md-3">
<div class="card point-card">
<div class="card-body">
<p class="text/center fs-4">Patient Comment</p>

<form class="row" action="comment" method="post">
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Full Name</label>
    <input type="text" class="form-control" id="inputEmail4" readonly value="" name="fullName">
  </div>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Gender</label>
    <input type="text" class="form-control" id="inputEmail4" readonly value="" name="gender">
  </div>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Age</label>
    <input type="text" class="form-control" id="inputEmail4" readonly value="" name="age">
  </div>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Appointment Date</label>
    <input type="text" class="form-control" id="inputEmail4" readonly value="" name="appointDate">
  </div>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Email</label>
    <input type="email" class="form-control" id="inputEmail4" readonly value="" name="email">
  </div>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Phone No</label>
    <input type="text" class="form-control" id="inputEmail4" readonly value="" name="phoneNo">
  </div>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Diseases</label>
    <input type="text" class="form-control" id="inputEmail4" readonly value="" name="diseases">
  </div>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Comment</label>
    <textarea required name="comment" class="form-control" rows="4" ></textarea>
  </div>
  <input type="hidden" name="id" value="">
  <input type="hidden" name="id" value="">
  
  <button class="mt-3 btn btn-primary col-md-6 offset-md-3">Submit</button>
</form>
</div>
</div>
</div>
</div>
</div>
</body>
</html>