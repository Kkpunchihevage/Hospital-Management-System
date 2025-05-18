<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@page isELIgnored="false" %>  



<nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#2579be ;" >
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-house-medical"></i>MediCare</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
      
      <c:if test="${empty userObj }">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="admin.jsp">Admin</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="doctor.jsp">Doctor</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="appointment.jsp">Appointment</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="about.jsp">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="user.jsp">User</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="contact.jsp">Contact</a>
        </li>
        </c:if>
        
        <c:if test="${not empty userObj }">
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="appointment.jsp">Appointment</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">View Appointment</a>
        </li>
        
       <form class="d-flex">
        <div class="dropdown">
  <button class="btn btn-success dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
   <i class="fa-solid fa-circle-user"></i>
           ${userObj.fullName} 
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
    <li><a class="dropdown-item" href="#">Change password</a></li>
    <li><a class="dropdown-item" href="userLogout">LogOut</a></li>
    
  </ul>
</div>
</form>        
        
        
        
        
        </c:if>
      </ul>
     
    </div>
  </div>
</nav>