<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
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
    <form name="subject" id="subject" class="row row-cols-lg-auto g-3 align-items-center">
        <input type="hidden" name="no" id="no" value="0"/>
        <div class="col-12">
            <label class="visually-hidden" for="s_num">학과번호</label>
            <div class="input-group">
                <input type="text" name="s_num" id="s_num" readonly class="form-control" placeholder="학과번호">
            </div>
        </div>
        <div class="col-12">
            <label class="visually-hidden" for="s_name">학과명</label>
            <div class="input-group">
                <input type="text" name="s_name" id="s_name" class="form-control" placeholder="학과명">
            </div>
        </div>
        <div class="col-12">
            <button type="submit" id="insertBtn" class="btn btn-success">입력완료</button>
            <button type="button" id="resetBtn" class="btn btn-success">다시쓰기</button>
            <button type="button" id="listBtn" class="btn btn-success">목록</button>
        </div>
    </form>
</body>
</html>
