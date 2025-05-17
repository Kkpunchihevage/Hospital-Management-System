<%@ page import="java.sql.*" %>
<%@ page import="java.time.LocalDate" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Medi Home - Doctor Appointment</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
            min-height: 100vh;
        }

        .navbar-brand {
            font-weight: bold;
            font-size: 24px;
            color: white !important;
        }

        .nav-link {
            color: white !important;
            margin-right: 15px;
        }

        .container-box {
            margin-top: 80px;
            display: flex;
            justify-content: center;
            align-items: stretch;
            flex-wrap: wrap;
            background: white;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
            overflow: hidden;
            max-width: 1000px;
            margin-left: auto;
            margin-right: auto;
        }

        .left-image {
            flex: 1;
            background: url('https://ibpf.org/wp-content/uploads/2016/09/doctors-appointment-mental-health.png') no-repeat center center;
            background-size: cover;
            min-height: 500px;
        }

        .form-section {
            flex: 1;
            padding: 40px 30px;
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #4e4e8e;
            font-weight: 700;
        }

        .btn-primary {
            background-color: #6c63ff;
            border-color: #6c63ff;
        }

        .btn-primary:hover {
            background-color: #594fdb;
            border-color: #594fdb;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">Medi Home</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMenu">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navMenu">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Doctor</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Patient</a></li>
            </ul>
        </div>
    </div>
</nav>
<br>
<br>
<!-- Form and Image Layout -->
<div class="container-box mt-5">
    <div class="left-image d-none d-md-block"></div>
    <div class="form-section">
        <h2>Book Your Doctor Appointment</h2>
        <form method="post" action="appointment.jsp" onsubmit="return validateForm();">
            <div class="mb-3">
                <label for="patientName" class="form-label">Patient Name *</label>
                <input type="text" class="form-control" id="patientName" name="patientName" required>
            </div>
            <div class="mb-3">
                <label for="patientEmail" class="form-label">Email *</label>
                <input type="email" class="form-control" id="patientEmail" name="patientEmail" required>
            </div>
            <div class="mb-3">
                <label for="doctor" class="form-label">Select Doctor *</label>
                <select class="form-select" id="doctor" name="doctor" required>
                    <option value="">-- Choose Doctor --</option>
                    <option value="Dr. Smith">Dr. John Smith - Cardiologist</option>
                    <option value="Dr. Lee">Dr. Anna Lee - Dermatologist</option>
                    <option value="Dr. Kumar">Dr. Raj Kumar - Neurologist</option>
                    <option value="Dr. Lopez">Dr. Maria Lopez - Pediatrician</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="appointmentDate" class="form-label">Appointment Date *</label>
                <input type="date" class="form-control" id="appointmentDate" name="appointmentDate" required min="<%= java.time.LocalDate.now() %>">
            </div>
            <div class="mb-3">
                <label for="appointmentTime" class="form-label">Appointment Time *</label>
                <input type="time" class="form-control" id="appointmentTime" name="appointmentTime" required>
            </div>
            <div class="mb-3">
                <label for="symptoms" class="form-label">Symptoms / Reason (Optional)</label>
                <textarea class="form-control" id="symptoms" name="symptoms" rows="3"></textarea>
            </div>
            <button type="submit" class="btn btn-primary w-100">Book Appointment</button>
        </form>

        <!-- JSP Appointment Logic -->
        <%
            if ("POST".equalsIgnoreCase(request.getMethod())) {
                String patientName = request.getParameter("patientName");
                String patientEmail = request.getParameter("patientEmail");
                String doctor = request.getParameter("doctor");
                String date = request.getParameter("appointmentDate");
                String time = request.getParameter("appointmentTime");
                String symptoms = request.getParameter("symptoms");

                if (patientName != null && patientEmail != null && doctor != null && date != null && time != null) {

                    String jdbcURL = "jdbc:mysql://localhost:3306/doctorappdb?useSSL=false&serverTimezone=UTC";
                    String dbUser = "root";
                    String dbPass = "";

                    Connection conn = null;
                    PreparedStatement ps = null;

                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        conn = DriverManager.getConnection(jdbcURL, dbUser, dbPass);

                        String sql = "INSERT INTO appointments (patient_name, patient_email, doctor, appointment_date, appointment_time, symptoms) VALUES (?, ?, ?, ?, ?, ?)";
                        ps = conn.prepareStatement(sql);
                        ps.setString(1, patientName);
                        ps.setString(2, patientEmail);
                        ps.setString(3, doctor);
                        ps.setDate(4, java.sql.Date.valueOf(date));
                        ps.setTime(5, java.sql.Time.valueOf(time + ":00"));
                        ps.setString(6, symptoms);

                        int rows = ps.executeUpdate();

                        if (rows > 0) {
        %>
                            <div class="alert alert-success mt-4" role="alert">
                                <h4 class="alert-heading">Appointment Confirmed!</h4>
                                <p>Thank you <strong><%= patientName %></strong>, your appointment with <strong><%= doctor %></strong> on <strong><%= date %></strong> at <strong><%= time %></strong> has been booked.</p>
                                <% if (symptoms != null && !symptoms.trim().isEmpty()) { %>
                                    <p><em>Symptoms/Reason:</em> <%= symptoms %></p>
                                <% } %>
                                <hr>
                                <p class="mb-0">A confirmation email will be sent to <strong><%= patientEmail %></strong>.</p>
                            </div>
        <%
                        } else {
        %>
                            <div class="alert alert-danger mt-4" role="alert">
                                Oops! Something went wrong. Please try again.
                            </div>
        <%
                        }

                    } catch (Exception e) {
        %>
                        <div class="alert alert-danger mt-4" role="alert">
                            Database Error: <%= e.getMessage() %>
                        </div>
        <%
                    } finally {
                        try { if (ps != null) ps.close(); } catch (Exception e) {}
                        try { if (conn != null) conn.close(); } catch (Exception e) {}
                    }
                } else {
        %>
                    <div class="alert alert-danger mt-4" role="alert">
                        Please fill all required fields.
                    </div>
        <%
                }
            }
        %>
    </div>
</div>
<br>
<br>
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
    function validateForm() {
        const dateInput = document.getElementById('appointmentDate');
        const today = new Date();
        const chosenDate = new Date(dateInput.value);

        if (chosenDate < today.setHours(0, 0, 0, 0)) {
            alert('Appointment date cannot be in the past!');
            return false;
        }

        return true;
    }
</script>
</body>
</html>
