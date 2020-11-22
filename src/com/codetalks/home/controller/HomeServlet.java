package com.codetalks.home.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codetalks.question.dao.QuestionDao;
import com.codetalks.question.model.Question;


/**
 * Servlet implementation class HomeServlet
 */
@WebServlet("/")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private QuestionDao questionDao = new QuestionDao();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		try {
			listQuestion(request, response);
		} catch (SQLException | IOException | ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void listQuestion(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        List <Question> listQuestion = questionDao.selectAllQuestions();
        request.setAttribute("listQuestion", listQuestion);
        RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/views/Home.jsp");
        dispatcher.forward(request, response);
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */


}
