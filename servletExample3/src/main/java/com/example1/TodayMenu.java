package com.example1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/todayMenu")
public class TodayMenu extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html><html>");
		out.println("<head><meta charset='UTF-8'/>");
		out.println("<title>JSP 예제</title>");
		out.println("<link rel = 'icon' href='data:,'></head>");
		out.println("<body><div style='text-align:center'><h1>오늘의 점심 메뉴</h1>");
		
		String [] values = request.getParameterValues("lunch");
		for(int i=0; i < values.length; i++) {
			out.println(values[i]);
			if(i < values.length-1) out.print(", ");
		}
		
		out.println("</div>");
		out.println("</body></html>");
		
		out.close();
	}

}
