<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@page isELIgnored="false" %>


<nav class="navbar navbar-expand-lg navbar-dark  "style="background-color: #25a9be;" >
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-house-medical"></i>Medical House</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="doctor.jsp">DOCTOR</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="view_doctor.jsp">View Doctor</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="patient.jsp">PATIENT</a>
        </li>
        </ul>
      
      <form class="d-flex"> 
      
      <div class="dropdown">
        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
         Admin
        </button>
        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
        <li><a class="dropdown-item" href="../adminLogout">LogOut</a></li>
    
        </ul>
       </div>
       </form>
       
    
    </div>
 </div>

</nav>