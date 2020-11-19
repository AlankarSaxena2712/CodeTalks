package com.codetalks.contact.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.codetalks.contact.model.Contact;

public class ContactDao {
	private static String jdbcURL = "jdbc:mysql://localhost:3306/codetalks";
    private static String jdbcUsername = "root";
    private static String jdbcPassword = "1234";
    
    private static final String INSERT_MESSAGE_SQL = "INSERT INTO contact" + "  (email, message) VALUES " + " (?, ?);";
    
    protected static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }
    
    public static void insertContact(Contact contact) throws SQLException {
    	try (Connection connection = getConnection();
    			PreparedStatement preparedStatement = connection.prepareStatement(INSERT_MESSAGE_SQL);) {
    		preparedStatement.setString(1, contact.getEmail());
    		preparedStatement.setString(2, contact.getMessage());
    		preparedStatement.executeUpdate();
    	} catch (Exception e) {
    		e.printStackTrace();
    	}
    }
}
