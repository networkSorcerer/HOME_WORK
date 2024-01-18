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
		
	</head>
	<body>
		<h1>jQuery란?</h1>
		<pre>
			기존에 복잡했던 클라이언트 측 HTML 스크립팅(JS)를 간소화하기 위해 고안된 
			Javascript Library이다
			
			jQUery는 JS보다 적은 양의 코드로 다양하고 풍부한 기능을 제공함 
			
			( * 라이브러리(library) : 프로그램, 프로그래밍 언어에 없는 추가적인 기능)
		</pre>
		<hr/>
		
		<h1>jQuery 라이브러리 연결 방법</h1>
		<pre>
			jQuery 라이브러리는 .js 확장자로 작성되어 있어 
			script 태그를 이용하여 연결 할 수 있다
			
			1) jQuery 라이브러리를 다운 로드 받아서 직접 연결 
			-장점 : 서버 컴퓨터에 라이브러리가 존재하기 때문에 연결 속도가 빠름 
			
			-jQuery 공식 홈페이지 : http://jQuery.com/
			-jQuery CDN 코드 제공 페이지 : http://code.jquery.com/
			
			2) CDN(Content Delivery Network)를 이용한 연결 방법
			-장점 : 언제 어디서든 jQuery를 이용할수 있다
			-단점 : 온라인 환경에서 이용 가능 . 인터넷 속도에 따라 지연이 될 수 있다
		</pre>
		<hr/>
		
		<h1>JS와 jQuery 차이점</h1>
		<button type="button" id="jsBtn">JS 버튼</button>
		<button type = "button" id="jQueryBtn">jQuery 버튼</button>
		<hr/>
		
		<h1>HTML 문서 해석 순서와 window.onload / ready()의 차이점</h1>
		<pre>
			HTML 문서는 기본적으로 위 -> 아래 순서대로 해석된다
			-> 아랫쪽에 작성되어 미해석된 코드는 윗쪽 코드에서 호출할 수 없다!
			
			*window.onload / ready() 공통점
			(JS)              (jQuery)
			
			-> 윗쪽에 코드가 작성되어도 제일 마지막에 해석(문서 로딩이 끝나는 시점)
			-장점 : 코드가 미해석 되어 오류가 발생하는 경우가 없어짐
			-단점 : 먼저 해석되는 코드가 너무 크면 수행되는 시간이 뒤쳐질 수 있음
			
			
			*window.onload / ready () 차이점
			-window.onload는 페이지 내에서 딱 한번만 작성할 수 있다!
			-ready()는 여러번 작성 가능 
			
			*** ready() 작성 방법 3가지 ***
			1) jQuery(document).ready(function(){코드;});
			
			2) $(document).ready(function(){코드;});
				('$'기호는 jQuery를 의미한다)
			3) $(function(){코드;};)=> 3번째 방법으로 앞으로 코딩을 진행할려고 합니다
		</pre>
		
		<h5>예제-1</h5>
		<div id="wrapper">
			<ul>
				<li class = "one">첫번째</li>
				<li class = "two" >두번째</li>
				<li class = "three">
					<span>세번째(글자색을 red로 설정해 보새요)</span></li>
				<li class="four">네번째</li>
			</ul>
			<button type="button" id="colorChange">색변경</button>
		</div>
		
		<h5>예제-2</h5>
		<pre>
			[참고]
			JS : document.getElementById("id명").innerHTML = 값
			jQuery : $("#id명").html("값")
		</pre>
		<h1 id="hello"></h1>
		<button type="button" id = "btnChange">데이터 변경</button>
		
		<h5>예제-3</h5>
		<p>
			<img src="../images/tree-1.jpg" alt="이미지" id="img"/>
		</p>
		
		<h5>예제-4</h5>
		<pre>
			[요구사항]
			영어 소문자 + 영어 대문자 + 숫자로만 이루어진 문자열
			글자수는 총 8~20글자 사이
			단, 첫 글자는 반드시 영어 소문자
			
			[참고]
			input 요소의 값을 얻고자 할 때
			JS : document.getElementById("id명").value ;
			jQuery : $("#id명").val();
		</pre>
		<input type="text" id="input1">
		<span id="span1"></span>
		
		<h5>예제-5</h5>
		<div id="input">
			<h2>단독 개체의 확인</h2>
			<div id="singleButton">클릭하세요</div>
			
			<h2>복수 개체의 확인</h2>
			
			<div>
				<button type="button" class="multiButton">클릭하세요</button>
				<button type="button" class="multiButton">클릭하세요</button>
				<button type="button" class="multiButton">클릭하세요</button>
				<button type="button" class="multiButton">클릭하세요</button>
			</div>
		</div>
		
		<h5>예제-6</h5>
		<p>이미지를 클릭하새요</p>
		<img src="../images/tree-1.jpg" alt="이미지" id="treeImage"/>
		
		<h5>예제-7</h5>
		<p>이미지를 클릭하세요</p>
		<img src="../images/tree-1.jpg" alt="이미지" id="treeImage"/>
		
		<!-- 1.라이브러리를 다운로드 받아서 직접 연결 -->
		<script src="../js/jquery-3.7.1.min.js"></script>
		
		<!-- 2.CDN 방식 연결 -->
		<!-- jQuery를 사용하기 위해서는 라이브러리 로딩이 우선적으로 진행되어야 한다 -->
		
		<script src="../js/01_jQueryBasic.js"></script>
	</body>
</html>