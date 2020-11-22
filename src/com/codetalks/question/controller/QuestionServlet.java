package com.codetalks.question.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codetalks.question.dao.QuestionDao;
import com.codetalks.question.model.Question;

/**
 * Servlet implementation class QuestionServlet
 */
@WebServlet("/new-question")
public class QuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private QuestionDao questionDao = new QuestionDao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuestionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/views/Question.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String question_topic = request.getParameter("question_topic");
		String question_type = request.getParameter("question_field");
		String question_data = request.getParameter("question_data");
		
		Question question = new Question();
		question.setQuestion_topic(question_topic);
		question.setQuestion_type(question_type);
		question.setQuestion_data(question_data);
		
		try {
			QuestionDao.insertQuestion(question);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/views/QuestionSuccess.jsp");
		dispatcher.forward(request, response);
	}

}
