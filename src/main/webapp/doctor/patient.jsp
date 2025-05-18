<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>View Appointments</title>
    


<style>
    body {
        background-image: url('<%= request.getContextPath() %>/image/patient.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center;
        background-attachment: fixed;
        font-family: 'Segoe UI', sans-serif;
    }

    .container {
        background-color: rgba(0,0,0,0.3); 
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        margin-top: 50px;
    }

    h2 {
        color: #333;
        font-weight: bold;
    }

    table th, table td {
        vertical-align: middle;
    }
</style>

<%@include file="../component/allcss.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container mt-5">
    <h2 class="text-center mb-4">All Appointments</h2>
    <table class="table table-striped table-bordered">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Patient Name</th>
                <th>Email</th>
                <th>Doctor</th>
                <th>Date</th>
                <th>Time</th>
                <th>Symptoms</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
        <%
            Connection conn = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/doctorappdb", "root", "");
                ps = conn.prepareStatement("SELECT * FROM appointments ORDER BY appointment_date DESC, appointment_time ASC");
                rs = ps.executeQuery();

                while (rs.next()) {
        %>
            <tr>
                <td><%= rs.getInt("id") %></td>
                <td><%= rs.getString("patient_name") %></td>
                <td><%= rs.getString("patient_email") %></td>
                <td><%= rs.getString("doctor") %></td>
                <td><%= rs.getDate("appointment_date") %></td>
                <td><%= rs.getTime("appointment_time") %></td>
                <td><%= rs.getString("symptoms") %></td>
                <td>
                    <% String status = rs.getString("status");
                       if ("Pending".equalsIgnoreCase(status)) { %>
                        <span class="badge bg-warning text-dark">Pending</span>
                    <% } else { %>
                        <span class="badge bg-success">Completed</span>
                    <% } %>
                </td>
            </tr>
        <%
                }
            } catch (Exception e) {
        %>
            <tr>
                <td colspan="8" class="text-danger text-center">Error: <%= e.getMessage() %></td>
            </tr>
        <%
            } finally {
                try { if (rs != null) rs.close(); } catch (Exception e) {}
                try { if (ps != null) ps.close(); } catch (Exception e) {}
                try { if (conn != null) conn.close(); } catch (Exception e) {}
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>
