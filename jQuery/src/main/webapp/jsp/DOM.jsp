<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		
		<!-- 
			Javascript에서 HTML 구조를 제어하는데 있어서 가장 중요한 개념이 
			DOM(Document Object Model)
			DOM의 두 가지 의미를 갖는데,
				-HTML과 XML 문서에 대한 구조적 정보를 제공하는 양식.
				-문서 구조나 외양 및 내용을 바꿀 수 있도록 프로그램에서 접근할 수 있는 방법을 제공
				
				함수
					-next() : 현재 요소의 다음 요소를 반환
					-prev() : 현재 요소의 이전 요소를 반환
					-parent() : 현재 요소의 부모 요소를 반환
					-children() : 현재 요소의 자식 요소를 반환
					-eq(n) : 요소의 n번째 index 요소를 반환 
		 -->
		
		<script src="../js/jquery-3.7.1.min.js"></script>
		<script src="../js/DOM.js"></script>
	</head>
	<body>
		<!--  
			탐색함수
				-next() : 현재 요소의 다음 요소를 반환 $('요소명').next()
				-prev() : 현재 요소의 이전 요소를 반환 $('요소명').prev()
				-parent() : 현재 요소의 부모 요소를 반환 $('요소명').parent()
				-children() : 현재 요소의 자식 요소를 반환 $('요소명').children()
				-eq(n) : 요소의 n번째 index 요소를 반환  $('요소명').eq(n) or $('요소명 : eq(n)')
				-parents(): 선택된 요소의 모든 상위 요소 반환 $('요소명').parents([매개변수])
				-find():선택된 요소의 인자와 일치하는 모든 하위 요소 반환 $('요소명').find(매개변수)
		 -->
		 <table>
		 	<tr>
		 		<td>1번</td>
		 		<td>2번</td>
		 		<td>3번</td>
		 	</tr>
		 	<tr>
		 		<td>4번</td>
		 		<td>5번</td>
		 		<td>6번</td>
		 	</tr>
		 	<tr>
		 		<td>7번</td>
		 		<td>8번</td>
		 		<td>9번</td>
		 	</tr>
		 </table>
		 <!-- 
		 	[요구사항]
		 	링크 클릭시 a 태그내의 텍스트를 얻어
		 	부모 요소인 div  태그의 배경이미지로 설정
		  -->
		  <div id="area">
		  	<ul id="menu">
		  		<li class = "item">
		  			<a href = "#">../images/tree-1.jpg</a>
		  		</li>
		  		<li class = "item">
		  			<a href = "#">../images/tree-2.jpg</a>
		  		</li>
		  		<li class = "item">
		  			<a href = "#">../images/tree-1.jpg</a>
		  		</li>
		  	</ul>
		  </div>
	</body>
</html>