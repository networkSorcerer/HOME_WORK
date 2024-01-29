package com.jdbc;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.member.MemberDAO;
import com.member.MemberDTO;

@WebServlet("/login")
public class MemberLogInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String memberId = request.getParameter("memberId");
		String memberPasswd = request.getParameter("memberPasswd");
		
		HttpSession session = request.getSession();//세션 객체 생성
		
		MemberDTO dto = new MemberDTO();
		dto.setMemberId(memberId);
		dto.setMemberPasswd(memberPasswd);
		
		MemberDAO dao = new MemberDAO();
		MemberDTO memberDTO =dao.login(dto);
		
		StringBuffer message = new StringBuffer();
		
		if(memberDTO !=null) {//로그인 성공시
			//로그인 정보를 개별적으로 설정
			//session.setAttribute("memberId",memberDTO.getMemberId());
			//session.setAttribute("memberName",memberDTO.getMemberName());
			//세션 객체 속성 설정. MemberDTO 자체를 속성으로 저장. 추후 필요한 필드값만 접근(반환)
			session.setAttribute("login", memberDTO);
			//context path를 확인 /loginInfo 매핑으로 서블릿 생성
			message.append("<div><a href = '/serlvet/loginInfo'>로그인 정보 확인하기</a><div>");
			
		}else { //로그인 실패시
			message.append("<div>아이디 또는 비밀번호가 일치하지 않습니다</div>");
			message.append("<div><a href ='#' onclick='history.back()'>이전 화면으로</a></div>");
		}
		
		out.println("<!DOCTYPE html><html>");
		out.println("<head><meta charset='UTF-8'/>");
		out.println("<title>Cookie 예제</title>");
		out.println("<link rel = 'icon' href='data:,'></head>");
		out.println("<body>");
		
		MemberDTO mDTO = (MemberDTO)session.getAttribute("login");
		if(mDTO !=null) {
			out.print(mDTO.getMemberName()+ "님 반갑습니다");
		}
		out.print(message.toString());
		out.println("</body></html>");
		out.close();
	}

}
