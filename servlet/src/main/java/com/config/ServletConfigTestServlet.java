package com.config;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class ServletConfigTestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String charset = getInitParameter("charset");
		request.setCharacterEncoding(charset);
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
	
				
			out.println("<!DOCTYPE html><html>");
			out.println("<head><meta charset='UTF-8'/>");
			out.println("<title>ServletContext 예제</title>");
			out.println("<link rel = 'icon' href='data;,'></head>");
			out.println("<body><div>ServletContext 속성 결정</div>");
			out.println("<h4>이름 : " + request.getParameter("name") + "</h4>");
			out.println("</body></html>");
			
			out.close();
			}
}
