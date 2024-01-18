<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 
    	[요구 사항]
    	1.book.xml생성 (여러분이 종아하는 책정보로 정의해주세요
    	2.05-load_xml 파일 생성
    	3.버튼 클릭시가 아니라 현재 파일 페이지가 로딩후 바로 책정보가 화면에 보이도록 설정해 주세요 
     -->
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
				$.ajax({
					url:'/jQuery/ajax/xml/book.xml',
					type: "get",
					dataType:'xml',
					success: function(data){
						$(data).find('book').each(function(){
							console.log($(this).index());
								let no = $(this).index() +1;
								let title = $(this).find("title").text();
								let author = $(this).find("author").text();
								let price = $(this).find("price").text();
								
								let txt = $("<li>").html(no + " - " + title + ", " + author + " , " + price );
								$('#view').append(txt);
						});
					},
					error: function(xhr, textStatus, errorThrown) {
						$(".console").html(textStatus + " (HTTP-" + xhr.status + " / " + errorThrown + ")" );
					}
				});
			});
		
		</script>
	</head>
	<body>
		<h1 class = "title" >$.ajax() 함수를 사용한 XML데이터 읽기</h1>
		<div class = "console" id= "result">
			<ul id="view"></ul>
		</div>
	</body>
</html>