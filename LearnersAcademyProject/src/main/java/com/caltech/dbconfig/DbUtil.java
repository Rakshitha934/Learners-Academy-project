package com.caltech.dbconfig;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbUtil {
	
	public static final String DRIVER_CLASS="com.mysql.jdbc.Driver";
	public static final String DB_URL="jdbc:mysql://localhost:3306/caltech_db1";
	public static final String USERNAME="root";
	public static final String PASSWORD="Raksha@7885";

	
	public static Connection dbConn() throws SQLException, ClassNotFoundException {
		Class.forName(DRIVER_CLASS);
		Connection conn=DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
		return conn;
		
	}
}
