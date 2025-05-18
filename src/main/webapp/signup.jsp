<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="component/allcss.jsp"%>

<style type="text/css">
body {
    position: relative;
    margin: 0;
    padding: 0;
    min-height: 100vh;
    background-image: url('image/user.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center center;
    background-attachment: fixed;
}

.point-card {
    background-color:#d4e9f1;
    backdrop-filter: blur(8px);
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    border-radius: 10px;
}



</style>
</head>
<body>
<%@include file="component/navbar.jsp" %>

<div class="container p-5">
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card point-card">
<div class="card-body">
<p class="fs-4 text-center">User Registration</p>

<c:if test="${not empty successMsg}">
<p class="text-center text-success fs-3">${successMsg}</p>
<c:remove var="successMsg" scope="session"/>

</c:if>

<c:if test="${ not empty errorMsg}">
<p class="text-center text-danger fs-3">${errorMsg}</p>
<c:remove var="errorMsg" scope="session"/>

</c:if>

<form action="user_register" method="post">
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">Full Name
				</label> <input type="text" class="form-control" name="fullName"
				id="exampleInputEmail1" aria-describedby="emailHelp">
			
		</div>
		<div class="mb-3">
			<label for="exampleInputPassword1" class="form-label">Email Address</label>
			<input type="email" class="form-control" name="email"
				id="exampleInputPassword1">
		</div>
		<div class="mb-3">
			<label for="exampleInputPassword1" class="form-label">Password</label>
			<input type="password" class="form-control" name="password"
				id="exampleInputPassword1">
		</div>
		
		<button type="submit" class="btn btn-success col-md-12">Submit</button>
		
	</form>
</div>
</div>
</div>
</div>
</div>


</body>
</html>