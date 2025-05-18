package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Appointment;

public class AppointmentDAO {

	

private Connection conn;

public AppointmentDAO(Connection conn) {
    super();
    this.conn = conn;
}

public List<Appointment> getAppointmentsByEmail(String email) {
    List<Appointment> list = new ArrayList<>();
    try {
        String sql = "SELECT * FROM appointment WHERE patient_email = ? ORDER BY appointment_date DESC";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, email);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            Appointment ap = new Appointment();
            ap.setId(rs.getInt("id"));
            ap.setPatientName(rs.getString("patient_name"));
            ap.setPatientEmail(rs.getString("patient_email"));
            ap.setDoctor(rs.getString("doctor"));
            ap.setAppointmentDate(rs.getDate("appointment_date").toString());
            ap.setAppointmentTime(rs.getTime("appointment_time").toString());
            ap.setSymptoms(rs.getString("symptoms"));
            ap.setCreatedAt(rs.getTimestamp("created_at").toString());

            list.add(ap);
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return list;
}


public List<Appointment> getAllAppointmentByUser(int userId) {
    List<Appointment> list = new ArrayList<>();
    try {
        String sql = "SELECT * FROM appointment WHERE user_id = ? ORDER BY appointment_date DESC";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setInt(1, userId);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            Appointment ap = new Appointment();
            ap.setId(rs.getInt("id"));
            ap.setPatientName(rs.getString("patient_name"));
            ap.setPatientEmail(rs.getString("patient_email"));
            ap.setDoctor(rs.getString("doctor"));
            ap.setAppointmentDate(rs.getDate("appointment_date").toString());
            ap.setAppointmentTime(rs.getTime("appointment_time").toString());
            ap.setSymptoms(rs.getString("symptoms"));
            ap.setCreatedAt(rs.getTimestamp("created_at").toString());

            list.add(ap);
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return list;
}



}