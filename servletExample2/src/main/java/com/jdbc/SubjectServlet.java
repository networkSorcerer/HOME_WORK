package com.jdbc;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.subject.SubjectDAO;
import com.subject.SubjectVO;



@WebServlet("/list")
public class SubjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SubjectVO vo = null;
		String s_name = request.getParameter("s_name");
		if(s_name != null) {
			vo = new SubjectVO();
			vo.setS_name(s_name);
		}
		
		SubjectDAO dao = new SubjectDAO();
		ArrayList<SubjectVO> list = dao.getSubjectTotal(null);
		
		request.setAttribute("list", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("subject/subjectList.jsp");
		dispatcher.forward(request, response);
	}
}
