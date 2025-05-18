<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Us</title>
    <%@ include file="component/allcss.jsp" %>
    <style>
    
        body {
            margin: 0;
            padding: 0;
            background-image: url('image/about us.jpg'); 
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            font-family: 'Segoe UI', sans-serif;
            color: #fff;
        }
        .about-section {
            background-color: #f7f7f7;
            padding: 40px 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .about-title {
            font-size: 32px;
            font-weight: bold;
            margin-bottom: 20px;
            color: #007bff;
        }
        .about-text {
            color:black;
            font-size: 18px;
            line-height: 1.7;
        }
    </style>
</head>
<body>

<%@ include file="component/navbar.jsp" %>

<div class="container mt-5">
    <div class="about-section">
        <h2 class="about-title text-center">About Us</h2>
        <p class="about-text">
            Welcome to our hospital management system. We are committed to delivering the highest quality healthcare services through technology and care. Our platform connects patients and doctors, simplifying appointment scheduling, medical record access, and communication.
        </p>
        <p class="about-text">
            Our team is made up of dedicated professionals passionate about improving the healthcare experience. Whether you're a doctor or a patient, we aim to make your experience smooth, secure, and efficient.
        </p>
        <p class="about-text">
            Thank you for trusting us with your health. We continue to grow and innovate to serve you better.
        </p>
    </div>
</div>

</body>
</html>
