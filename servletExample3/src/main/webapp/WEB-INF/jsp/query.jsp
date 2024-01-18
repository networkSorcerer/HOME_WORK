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
		<style type="text/css">
			a > img {
				width: 200px; height: 200px;
				border:1px solid #000;
				border-radius:3px;
			}
		</style>
		<script src="../js/jquery-3.7.1.min.js"></script>
	</head>
	<body>
		<h1>링크로 서블릿 요청하기</h1>
		<!-- ?쿼리스트링으로 서버에 전달할 값(파라미터)을 명시할 수 있다
		이때 전송할 형식: 이름=값 여러 데이터를 전송 시 : 이름=값&이름2=값2 -->
		<a href="/servletExample3/queryget?questName=둘리&num-101">
		<img src="../image/tree-1.jpg"/></a>
		<a href="/servletExample3/queryget?questName=둘리&num-101">
		<img src="../image/tree-2.jpg"/></a>
		<hr />
		
		<h1>이름과 좋아하는 숫자 전달하기 (GET 방식)</h1>
		<form method ="get" action="/servletExample3/queryget">
			<input type="text" name="guestName" placeholder="이름을 입력하세요" required><br />
			<input type = "number" name="num" min="0" placeholder="좋아하는 숫자를 입력하세요" required><br />
			<input type="submit" value="요청(GET)">
		</form>
		<br />
		<hr />
		
		<h1>이름과 좋아하는 숫자 전달하기 (POST 방식)</h1>
		<form method ="post" action="/servletExample3/querypost">
			<input type="text" name="guestName" placeholder="이름을 입력하세요" required><br />
			<input type = "number" name="num" min="0" placeholder="좋아하는 숫자를 입력하세요" required><br />
			<input type="submit" value="요청(POST)">
		</form>
	</body>
</html>