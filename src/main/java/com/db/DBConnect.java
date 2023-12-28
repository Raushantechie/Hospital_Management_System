package com.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
private static Connection conn;
public static Connection getConn()
{
	try {
		//Class.forName("com.mysql.cj.jdbc.Driver");
		Class.forName("com.mysql.cj.jdbc.Driver");
		//conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital2","root","c##raush123");
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital2","root","c##raush123");
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return conn;
}
}
