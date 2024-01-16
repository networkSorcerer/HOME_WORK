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
		<script src="/servletExample2/js/jquery-3.7.1.min.js"></script>
		<script src="/servletExample2/js/common.js"></script>
		<script src="/servletExample2/js/subjectForm.js"></script>
	</head>
	<body>
		<h3>테이블 subject 학과 정보 등록</h3>
		<hr/>
		<form name="subject" id="subject" class ="row row-cols-lg-auto g-3 align-items-center">
			<input type="hidden" name="no" id="no" value="0"/>
			<div class="col-12">
				<label class ="visually-hidden" for = "s_num">학과번호</label>
				<div class="input-group">
					<input type="text" name="s_num" id="s_num" readonly="readonly" class="form-control" placeholder="학과번호">
				</div>
			</div>
			<div class="col-12">
				<label class="visually-hidden" for = "s_num">학과명</label>
				<div class="input-group">
					<input type="text" name="s_name" id="s_name" class="form-control" placeholder="학과명">
				</div>
			</div>
			<div class="col-12">
				<button type="button" id="insertBtn" class = "btn btn-success">입력완료</button>
				<button type="button" id="resetBtn" class = "btn btn-success">다시쓰기</button>
				<button type="button" id="listBtn" class = "btn btn-success">목록</button>
			</div>
			<!--  <table summary = "학과 정보 등록을 위한 입력 페이지">
				<colgroup>
					<col width="100"></col>
					<col width="400"></col>
				</colgroup>
				
				<thead>
					<tr><th colspan="2">학과 정보 등록</th></tr>
				</thead>
				<tbody>
					<tr>
						<th class="ls2">학과번호</th>
						<td><input type="text" name="s_name" id="s_num" readonly="readonly"/></td>
					</tr>
				
					<tr>
						<th class="ls7">학과명</th>
						<td><input type="text" name="s_name" id="s_name" maxlength="8"/></td>
					</tr>
					<tr>
						<td colspan="2" class="text-center">
							<button type="button" id="insertBtn">입력완료</button>
							<button type="button" id="resetBtn">다시쓰기</button>
							<button type="button" id="listBtn">목록</button>
						</td>
					</tr>
				</tbody>
			</table>-->
		</form>
	</body>
</html>