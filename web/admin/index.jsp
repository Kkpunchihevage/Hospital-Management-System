<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@page isELIgnored="false" %>   
    
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
</head>
<body>
<%@include file="navbar.jsp" %>

<c:if test="${ empty adminObj}">
<c:redirect url="../admin.jsp"></c:redirect>

</c:if>
<div class="container p-5">
<p class="text-center fs-3">AdminDashboard</p>
<c:if test="${not empty successMsg}">
<p class="text-center text-success fs-3">${successMsg}</p>
<c:remove var="successMsg" scope="session"/>

</c:if>

<c:if test="${ not empty errorMsg}">
<p class="text-center text-danger fs-3">${errorMsg}</p>
<c:remove var="errorMsg" scope="session"/>

</c:if>


<div class="row">
<div class="col-md-4 mt-2">
<div class="card point-card" data-bs-toggle="modal" data-bs-target="#exampleModal">
<div class="card-body text-center text-success">
<i class="fa-solid fa-users"></i>
<p class="fs-4 text-center">User<br> 5</p>

</div>
</div>
</div>



<div class="col-md-4 mt-2">
<div class="card point-card" data-bs-toggle="modal" data-bs-target="#exampleModal">
<div class="card-body text-center text-success">
<i class="fa-solid fa-calendar-check"></i>
<p class="fs-4 text-center">Total Appointment<br> 5</p>

</div>
</div>
</div>

<div class="col-md-4 mt-2">
<div class="card point-card" data-bs-toggle="modal" data-bs-target="#exampleModal">
<div class="card-body text-center text-success">
<i class="fa-solid fa-user-doctor"></i>
<p class="fs-4 text-center">Doctor<br> 5</p>

</div>
</div>
</div>


<div class="row">
<div class="col-md-4 mt-2">
<div class="card point-card" data-bs-toggle="modal" data-bs-target="#exampleModal">
<div class="card-body text-center text-success">
<i class="fa-solid fa-user-doctor"></i>
<p class="fs-4 text-center">View Doctor<br> 5</p>

</div>
</div>
</div>

<div class="col-md-4 mt-2">
<div class="card point-card" data-bs-toggle="modal" data-bs-target="#exampleModal">
<div class="card-body text-center text-success">
<i class="fa-solid fa-user-doctor-hair"></i>
<p class="fs-4 text-center">Specialist<br> 5</p>

</div>
</div>
</div>

</div>
</div>



<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <form action="../addSpecialist" method="post">
      <div class="form-group">
      <label>Enter Specialist Name</label>
      <input type="text" name="specialistName" class="form-control">
      
      </div>
      <div class="text-center mt-3">
      <button type="submit" class="btn-btn-primary">Add</button>
      </div>
      </form>
       
      </div>
      <div class="modal-footer">
       
        <button type="button" class="btn-btn-primary">close</button>
      </div>
    </div>
  </div>
</div>
</div>
</body>
</html>