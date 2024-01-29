<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Arrays" %>
    <%
    	request.setCharacterEncoding("UTF-8");
    	String birth = request.getParameter("birth");
    	String name = request.getParameter("name");
    	String scholarship = request.getParameter("scholarship");
    	String major = request.getParameter("major");
    	String [] platforms = request.getParameterValues("paltform");
    	String [] languages = request.getParameterValues("language");
    %>
    
   
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
		<!-- 브라우저의 호환성 보기 모드를 막고, 해당 브라우저에서 지원하는 가장 최신 버전의 방식으로 HTML 보여주도록 설정.-->
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
		<!--viewport : 화면에 보이는 영역을 제어하는 기술. width는 device-width로 설정(브라우저 너비를 장치 너비에 맞추어 표시). initial-scale는 초기비율(보이는 영역과 웹 페이지를 맞춤). user-scalable는 사용자가 화면축소를 하지 못하도록 설정.-->
		
		<title>Insert title here</title>
		
		<!-- 모바일 웹 페이지 설정 -->
		<link rel="shortcut icon" href="../image/icon.png" />
		<link rel="apple-touch-icon" href="../image/icon.png" />
		<!-- 모바일 웹 페이지 설정 끝 -->
		 <script type="text/javascript" src="../js/jquery-3.7.1.min.js"></script>
	</head>
	<body>
		<fieldset>
			<legend>
				<strong>기술정보 이력서</strong>
			</legend>
			<table>
				<tr>
					<td class="t1">이름</td>
					<td class="t2">&nbsp;<%= name %></td>
				</tr>
				<tr>
					<td class="t1">생년월일</td>
					<td class="t2">&nbsp;<%=birth %></td>
				</tr>
				<tr>
					<td class="t1">학력</td>
					<td class="t2">&nbsp;<%= scholarship %></td>
				</tr>
				<tr>
					<td class="t1">사용가능 플랫폼</td>
					<td class="t2">&nbsp;
					<%
						int i= 0;
						for( String forms : platforms) {
							out.println(forms);
							if(i++ < platforms.length-1) out.println(",");
						}
					
					%>
				</tr>
			</table>
		</fieldset>
	</body>
</html>