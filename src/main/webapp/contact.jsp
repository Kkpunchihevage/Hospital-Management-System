<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Us</title>
    <%@include file="component/allcss.jsp"%>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-image: url('image/contact.jpg'); 
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            font-family: 'Segoe UI', sans-serif;
            color: #fff;
        }

        .contact-container {
            background-color: rgba(0, 0, 0, 0.6);
            padding: 40px;
            border-radius: 15px;
            margin-top: 60px;
        }

        .social-icons i {
            font-size: 24px;
            color: #fff;
            margin: 10px;
            padding: 15px;
            border-radius: 50%;
            background-color: #444;
            transition: 0.3s ease;
        }

        .social-icons i:hover {
            background-color: #25a9be;
            transform: scale(1.1);
        }

        .form-control {
            background-color: rgba(255, 255, 255, 0.9);
        }

        .form-label {
            font-weight: bold;
            color: #f0f0f0;
        }
    </style>
</head>
<body>

<%@include file="component/navbar.jsp"%>

<div class="container">
    <div class="row contact-container">
        <!-- Left Side -->
        <div class="col-md-5">
            <h2>Contact Info</h2>
            <p><i class="fa fa-phone"></i> +94 01145 67890</p>
            <p><i class="fa fa-envelope"></i> contact@medicare.com</p>
            <div class="social-icons">
                <a href="https://facebook.com" target="_blank"><i class="fab fa-facebook-f"></i></a>
                <a href="https://instagram.com" target="_blank"><i class="fab fa-instagram"></i></a>
                <a href="https://twitter.com" target="_blank"><i class="fab fa-twitter"></i></a>
                <a href="https://linkedin.com" target="_blank"><i class="fab fa-linkedin-in"></i></a>
            </div>
        </div>

        <!-- Right Side (Form) -->
        <div class="col-md-7">
            <h2>Send Us a Message</h2>
            <form action="contactHandler.jsp" method="post">
                <div class="mb-3">
                    <label class="form-label">Full Name</label>
                    <input type="text" name="name" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Email Address</label>
                    <input type="email" name="email" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Message</label>
                    <textarea name="message" class="form-control" rows="4" required></textarea>
                </div>
                <button type="submit" class="btn btn-success" >Send Message</button>
            </form>
        </div>
    </div>
</div>

</body>
</html>
