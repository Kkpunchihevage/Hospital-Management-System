<%@page import="com.db.DBConnect" %>
<%@page import="java.sql.Connection" %>



<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HMS</title>
<%@include file="component/allcss.jsp" %>
<style type="text/css">
.poin-card{
    box-shadow:0 0 10px 0 rgba(0,0,0.3);
}

</style>
</head>
<body>
<%@include file="component/navbar.jsp" %>



<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="image/hos_1.jpg" class="d-block w-100" alt="..." height="625px">
    </div>
    <div class="carousel-item">
      <img src="image/2.jpg" class="d-block w-100" alt="..." height="625px">
    </div>
    <div class="carousel-item">
      <img src="image/hos_3.jpg" class="d-block w-100" alt="..."height="625px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<%@include file="component/footer.jsp" %>

	
</body>
</html>
