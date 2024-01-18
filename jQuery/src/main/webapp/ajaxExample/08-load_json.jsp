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
		<script type="text/javascript" src="../js/jquery-3.7.1.min.js"></script>
		<script type="text/javascript">
			$(function(){
				$.get('/jQuery/ajax/json/book.json', function(data) {
					let book = data.books.book;
					
					for (let i=0; i<book.length; i++) {
						let title = book[i].title;
						let author = book[i].author;
						let price = book[i].price;
						
						let li = $("<li>").html(title + ", " + author + ", "+ price);
						$("#view").append(li);
					}
				}).fail(function(xhr, status, errorThrown) {
					$("#result").html("오류가 발생했습니다. <br/>").append("오류명 : " + errorThrown + "<br />").append("상태 : " + status);
				});
				
			});
			
		</script>
	</head>
	<body>
		<h1 class = "title">$.get / $.getJSON() 함수를 사용한 JSON 데이터 읽기</h1>
		<div class = "console" id="result">
			<ol id="view"></ol>
		</div>
	</body>
</html>