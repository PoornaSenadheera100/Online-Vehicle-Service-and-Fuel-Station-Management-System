package com.admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class AdminDBUtil {
	
	public static boolean validate(String username, String password) {
		
		//create data base connection
		String dburl = "jdbc:mysql://localhost:3306/spsh";
		String dbuser = "root";
		String dbpassword = "password";
		
		boolean status = false;
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(dburl, dbuser, dbpassword);
			Statement stat = con.createStatement();
			
			//SQL Statement
			String sql = "select * from admin where username = '" + username + "' AND password = '" + password + "'";

			//Execute SQL query and get result
			ResultSet result = stat.executeQuery(sql);
			
			//if the result is not null
			if(result.next()) {
				status = true;
			}
			
			else {
				status = false;
			}
			
		}
		catch (Exception e){
			e.printStackTrace();
		}
		
		return status;
	}

}
