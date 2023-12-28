package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.entity.User;

public class UserDao {
	private Connection conn;

	public UserDao(Connection conn) {
		super();
		this.conn = conn;
	}
	public boolean UserRegister(User u)
	{
		boolean f=false;
		try {
			String sql="insert into user_dtls(full_name,email,password) values(?,?,?)";
			PreparedStatement pstmt=conn.prepareStatement("null");
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return f;
	}

}
