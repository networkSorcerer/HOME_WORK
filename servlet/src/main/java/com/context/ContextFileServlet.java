package com.context;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.StringTokenizer;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/contextFile")
public class ContextFileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		ServletContext context = getServletContext();
		InputStream is = context.getResourceAsStream("/WEB-INF/config/init.txt");
		BufferedReader buffer = new BufferedReader (new InputStreamReader(is));
		
		String menu = null;
		String menu_member = null;
		String menu_order = null;
		String menu_goods = null;
		
		while((menu = buffer.readLine()) != null) {
			StringTokenizer tokens = new StringTokenizer(menu, ",");
			menu_member = tokens.nextToken();
			menu_order =tokens.nextToken();
			menu_goods = tokens.nextToken();
			
			out.println("<!DOCTYPE html><html>");
			out.println("<head><meta charset='UTF-8'/>");
			out.println("<title>ServletContext 예제</title>");
			out.println("<link rel = 'icon' href='data;,'></head>");
			out.println("<body>");
			out.println(menu_member + "<br/>");
			out.println(menu_order + "<br/>");
			out.println(menu_goods + "<br/>");
			out.println("</body></html>");
			out.close();
		}
	}

}
