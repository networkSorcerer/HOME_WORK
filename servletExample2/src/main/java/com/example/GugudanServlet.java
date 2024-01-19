package com.example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/gugudan")
public class GugudanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		int dan = Integer.parseInt(request.getParameter("dan"));
		
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html><html>");
		out.println("<head><meta charset='UTF-8' /> <title>간단한 연산 결과</title>");
		out.println("<link rel = 'icon' href='data:,'>");
		out.println("</head>");
		out.println("<body>");
		out.println("<table>");
		out.println("<tr>");
		out.println("<td colspan='2'>" + dan + " 단 출력 </td>");
		out.println("</tr>");
		
		for (int i = 1; i < 10; i++) {
			if (i % 2 == 0 ) {
				out.print("<tr style='background-color:#ACFA58'> ");
			} else {
				out.print("<tr style='background-color:#81BEF7'> ");
			}
			out.print("<td>");
			out.print(dan + " * " + i);
			out.print("</td>");
			out.print("<td>");
			out.print(i * dan);
			out.print("</td>");
			out.print("</tr>");
		}
		out.print("</table>");
		out.print("</body></html>");
		out.close();
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
