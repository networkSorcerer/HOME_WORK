package com.scope;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/setAttribute")
public class SetAttribute extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String ctxMsg = "context에 바인딩됩니다";
		String sesMsg = "session에 바인딩됩니다";
		String reqMsg = "request에 바인딩됩니다";
		
		ServletContext application = getServletContext();
		application.setAttribute("context", ctxMsg);
		
		HttpSession session = request.getSession();
		session.setAttribute("session", sesMsg);
		request.setAttribute("request", reqMsg);
		
		RequestDispatcher dispatch = request.getRequestDispatcher("getAttribute");
		dispatch.forward(request, response);
		
		out.close();
	}

}
