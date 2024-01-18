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
		<script src="../js/jquery-3.7.1.min.js"></script>
		<script src="../js/formExample.js"></script>
	</head>
	<body>
		<h1>두수 연산하기</h1>
		<form name="calculation" id="calculation">
			<input type="text" name="number1" id="number1" placeholder="숫자 입력"/>
			<select name="symbol" id="symbol">
				<option value="+">+</option>
				<option value="-">-</option>
				<option value="*">*</option>
				<option value="/">/</option>
			</select>
			<input type="text" name="number2" id="number2" placeholder="숫자 입력"/>
			<button type="button" id="operation">=</button>
			<input type="text" name="result" id="result" readonly="readonly"/>
			<!-- 
				곱셈은 덧셈을 편리하게 하기 위해 등장한 연산이다
				덧셈으로 곱셈을 하는 코드를 작성하시오
				3 * 9 일 경우, 3을 9번 더하는 것과 9를 3번 더하는 것 중 어느 것이 효울적인가?
			 -->
			 <h1>덧셈으로 곱셈을 표현</h1>
			 <form name="toplus" id="toplus">
			 	<p>곱셈을 실행할 두 수를 입력해주세요</p>
			 	<input type="text" name ="number3" id="number3" placeholder="숫자 입력"><br/>
			 	<input type="text" name ="number4" id="number4" placeholder="숫자 입력"><br/>
			 	<button type ="button" id = "plusBtn">덧셈으로 곱셈을 표현</button><br/>
			 	<input type= "text" name="area" id="area" placeholder="결과 출력" readonly="readonly"/>
			 </form>
		</form>
	</body>
</html>