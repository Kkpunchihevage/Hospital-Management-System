package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;

public class UserDAO {
	private Connection conn;
	 

	

	public UserDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	

	
	public boolean register(User user) {
		boolean f= false;
		try {
			String sql ="INSERT INTO users(fullName,email,password) VALUES(?,?,?)";
		
			PreparedStatement ps = conn.prepareStatement(sql) ;
		    ps.setString(1, user.getFullName());
		    ps.setString(2, user.getEmail());
		    ps.setString(3, user.getPassword());
		    
		    int i =ps.executeUpdate();
		    if(i==1) {
		    	f=true;
		    }
		    
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public User login(String email,String password) {
		User user=null;
		try {
			String sql="SELECT* FROM users WHERE email=? AND password=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,email);
			ps.setString(2,password);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				user=new User();
				user.setId(rs.getInt(1));
				user.setFullName(rs.getString(2));
				user.setEmail(rs.getString(3));
				user.setPassword(rs.getString(4));
			}
				
		}catch(Exception e) {
			e.printStackTrace();
		}
		return user;
	}

}
