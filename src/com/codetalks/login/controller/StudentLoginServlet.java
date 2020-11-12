package com.codetalks.login.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codetalks.login.dao.StudentLoginDao;
import com.codetalks.login.model.StudentLogin;

/**
 * Servlet implementation class StudentLoginServlet
 */
@WebServlet("/register")
public class StudentLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      private StudentLoginDao studentlogindao=new StudentLoginDao(); 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/views/Registration.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fullname=request.getParameter("fullname");
		String username=request.getParameter("email");
		String password=request.getParameter("password");
		
		StudentLogin studentlogin=new StudentLogin();
		studentlogin.setFullname(fullname);
		studentlogin.setEmail(username);
		studentlogin.setPassword(password);
		
		try {
			StudentLoginDao.registerUser(studentlogin);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/views/RegistrationSuccess.jsp");
		dispatcher.forward(request, response);
		
	}

}
