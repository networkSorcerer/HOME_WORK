<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.ArrayList, com.subject.SubjectVO" %>
    <%
    	@SuppressWarnings("unchecked")
    	ArrayList<SubjectVO> list = (ArrayList<SubjectVO> )request.getAttribute("list");
    	int counter = list.size();
    	
    	String word = request.getParameter("s_name");
    	if(word == null){
    		word = "";
    	}
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
		<script src="/servletExample/js/jquery-3.7.1.min.js"></script>
		<!-- request.getContextPath() 현재 프로젵그의 Context명을 반환, 즉 /servletExample 
		<script>
			$(function(){
				$("#subjectInsert").on("click", ()=>{
					location.href="<%=request.getContextPath()%>/subject/subjectForm.jsp";
				});
			});
		</script>-->
		
	</head>
	<body>
		<div id="container">
			<h3>테이블 subject 학과 정보 조회</h3>
			<hr/>
			<div id="subjectList">
				<!-- <div class="text-right">
					<input type="button" value="학과정보등록" id="subjectInsert"/>
				</div> -->
				<form id="search">
					<div class = "input-group">
						<input type = "text" class = "form-control" name = "s_name" id="name" placeholder="학과명 검색" aria-label="학과명 검색" maxlength="20"/>
						<button class = "btn btn-outline-secondary" type="button" id="searchBtn" >학과명</button>
						<button class = "btn btn-outline-secondary" type = "button" id ="searchAllBtn" >전체 검색</button>
					</div>
				</form>
				<table class = "table table-striped">
					<thead>
						<tr class = "text-center">
							<th>번호</th>
							<th>학과번호</th>
							<th>학과명</th>
							<th>삭제여부</th>
							<th>수정</th>
							<th>tkrwp</th>
						</tr>
					</thead>
					<tbody>
					<% if (counter > 0) {
						for (SubjectVO sub : list ) {
					%>
						<tr class ="text-center" data-no="<%= sub.getNo() %>">
							<td><%= sub.getNo() %></td>
							<td><%= sub.getS_num() %></td>
							<td><%= sub.getS_name() %></td>
							<td><%= sub.getDeleteable() %></td>
							<td><button type="button" 
							class="updateBtn btn btn-outline-success btn-sm">수정</button></td>
							<td><button type="button" class = "deleteBtn btn bnt-outline-success btn-sm" 
							<% if(sub.getDeleteable().equals("삭제불가능")){ %> disabled="disabled" <% } %>>삭제</button></td>
						</tr>
					<%
					}
					} else{
					%>
						<tr>
							<td colspan="3" class="text-center">
								조회된 학과 정보가 존재하지 않습니다
							</td>
						</tr>
						<%} %>
					</tbody>
				</table>
				<div class="text-right">
					조회된 학과 수는 <span id="counter"><%=counter %></span>
				</div>
			</div>
			<div id="subjectForm">
				<jsp:include page="subjectForm.jsp"/>
			</div>
		</div>
		<script src="http://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
		<script src="/servletExample2/js/jquery-3.7.1.min.js"></script>
		<script src="/servletExample2/js/subjectList.js"></script>
		<script>
  			 let keyword = "<%=word%>";
  			 if (keyword != "") {
      		$("#name").val(keyword);
   			}
		</script>

	</body>
</html>