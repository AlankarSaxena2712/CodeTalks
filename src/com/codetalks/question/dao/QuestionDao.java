package com.codetalks.question.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.codetalks.question.model.Question;


public class QuestionDao {
	private static String jdbcURL = "jdbc:mysql://localhost:3306/codetalks";
    private static String jdbcUsername = "root";
    private static String jdbcPassword = "1234";
    
//    CREATE TABLE `codetalks`.`question` (
//    		  `id` INT NOT NULL AUTO_INCREMENT,
//    		  `question_topic` VARCHAR(100) NOT NULL,
//    		  `question_field` VARCHAR(20) NOT NULL,
//    		  `question_data` VARCHAR(1000) NOT NULL,
//    		  `created_by` VARCHAR(45) NOT NULL DEFAULT '\"alankar\"',
//    		  `timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
//    		  PRIMARY KEY (`id`));
    private static final String INSERT_QUESTION_SQL = "INSERT INTO question" + "(question_topic, question_field, question_data, created_by, timestamp) VALUES " + " (?, ?, ?, ?, now());";
    private static final String SELECT_ALL_QUESTIONS = "select * from question;";
    
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
    
    public static void insertQuestion(Question question) throws SQLException {
    	try (Connection connection = getConnection();
    			PreparedStatement preparedStatement = connection.prepareStatement(INSERT_QUESTION_SQL);) {
    		preparedStatement.setString(1, question.getQuestion_topic());
    		preparedStatement.setString(2, question.getQuestion_type());
    		preparedStatement.setString(3, question.getQuestion_data());
    		preparedStatement.setString(4, "some user");
    		preparedStatement.executeUpdate();
    	} catch (Exception e) {
    		e.printStackTrace();
    	}
    }
    
    public List <Question> selectAllQuestions() {
    	List<Question> question = new ArrayList<>();
    	try (Connection connection = getConnection();
    			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_QUESTIONS);) {
    		ResultSet rs = preparedStatement.executeQuery();
    		while (rs.next()) {
    			int id = rs.getInt("id");
    			String question_topic = rs.getString("question_topic");
    			String question_type = rs.getString("question_field");
    			String question_data = rs.getString("question_data");
    			String created_by = rs.getString("created_by");
    			String timestamp = rs.getString("timestamp");
    			question.add(new Question(id, question_topic, question_type, question_data, created_by, timestamp));
    		}
    	} catch (SQLException e) {
    		printSQLException(e);
    	}
    	return question;
    }

    private void printSQLException(SQLException ex) {
		// TODO Auto-generated method stub
		for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
	}
}
