package com.codetalks.login.dao;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.SQLException;

import com.codetalks.login.model.StudentLogin;

public class StudentLoginDao {
	
	public static int registerUser(StudentLogin student) throws ClassNotFoundException{
		
		
		String INSERT_USERS_SQL="insert into register "+" (fullname,email,password) values "+" (?,?,?);";
		int result=0;
		
		
		try{  
			Class.forName("com.mysql.cj.jdbc.Driver");  
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/codetalks","root","1234"); 
			PreparedStatement  preparedstatement = connection.prepareStatement(INSERT_USERS_SQL);
			preparedstatement.setString(1, student.getFullname());
			preparedstatement.setString(2, student.getEmail());
			preparedstatement.setString(3, student.getPassword());
			
			System.out.println(preparedstatement);
			result=preparedstatement.executeUpdate();
			
	}catch(SQLException e){e.printStackTrace();}
		
		return result;
	
}
}
