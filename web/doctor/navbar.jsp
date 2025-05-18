<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Dashboard</title>

<style>
.custom-dropdown-btn {
    background-color:#282b2b; 
    color: white;
    border: none;
}
.custom-dropdown-btn:hover {
    background-color: #e65c00;
}

</style>

</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">MediCare</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="patient.jsp">Patient</a>
        </li>
        
    </ul>> 
  <form class="d-flex">
  <div class="dropdown">
  <button class="btn custom-dropdown-btn dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
     ${doctObj.fullName} 
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
    <li><a class="dropdown-item active" href="profile.jsp">Edit</a></li>
    <li><a class="dropdown-item active" href="../doctorLogout">LogOut</a></li>
    
  </ul>
</div> 
  


 
  </form>   
    </div>
  </div>
</nav>


</body>
</html>