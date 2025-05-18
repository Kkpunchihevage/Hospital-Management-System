<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Login</title>
<%@include file="component/allcss.jsp"%>

<style type="text/css">
body {
    background-image: url('image/form.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center center;
    background-attachment: fixed;
    margin: 0;
    padding: 0;
    min-height: 100vh;
}
.point-card {
    background-color:#d4e9f1;
    backdrop-filter: blur(8px);
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    border-radius: 10px;
}


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
<p class="fs-4 text-center">Doctor Login</p>


<c:if test="${not empty successMsg}">
<p class="text-center text-success fs-3">${successMsg}</p>
<c:remove var="successMsg" scope="session"/>

</c:if>

<c:if test="${not empty errorMsg}">
<p class="text-center text-danger fs-3">${errorMsg}</p>
<c:remove var="errorMsg" scope="session"/>

</c:if>

	<form action="doctorLogin" method="post">
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">Email
				address</label> <input type="email" class="form-control" name="email"
				id="exampleInputEmail1" aria-describedby="emailHelp">
			
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