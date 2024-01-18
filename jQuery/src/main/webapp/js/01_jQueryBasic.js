//JS와 jQuery 차이점

//배경색 : black
//글자색 : yellow
//글자 크기 : 20px
//window.onload = function() {
	//Javascript
	//document.querySelector("#jsBtn").addEventListener("click", function(){
	//	this.style.backgroundColor = "black";
	//	this.style.color = "yellow";
	//	this.style.fontSize = "20px";
	//});
//};

//$(document).ready(function(){
	//jQuery
	//$("#jQueryBtn").on("click", function(){
		//$(this).css("background-color", "black").css("color", "yellow").css("font-size", "20px");
	//});
//});

let number=1;

$(function(){
	$("#jQueryBtn").click(function(){
		$(this).css({
			"background-color":"black",
			"color":"yellow",
			"font-size":"20px"
		});
	});
	
	$("#colorChange").click(function(){
		$("#wrapper > ul > li.three > span").css("color", "red");
	});
	
	$("#btnChange").click(function(){
		$("#hello").html("오늘도 최선을 다해 ...");
	});
	
	$("#btnChange").click(function(){
		$("#hello").html("오늘도 최선을 다해...");
	});
	
	$("#img").hover(function(){
		$(this).attr("src","../images/tree-2.jpg");
	}, function() {
		$(this).attr("src", "../images/tree-1.jpg");
	});
	
	const regExp = /^[a-z][a-zA-Z0-9]{7,19}$/;
	
	$("#input1").on("keyup", function(){
		if(regExp.test( $("#input1").val())) {
			$("#span1").text("유효한 문자열 형식입니다");
			$("#span1").css("color", "green");
		}else {
			$("#span1").text("유효하지 않는 문자열 형식입니다").css("color","red");
		}
		
		if($("#input1").val().length==0){
			$("#span1").text("");
		}
	});
	
	$("#singleButton").click(function(){
		$(this).html("다시 일상으로 돌아오셔야 합니다~~ 오늘도 파이팅입니다~!!");
	});
	
	$(".multiButton").click(function(){
		let index = $(this).index();
		let result = index + "번째 요소를눌렀습니다";
		$(this).html(result);
	});
	
	$("#treeImage").click(function(){
		number = (number%6)+1;
		$(this).attr("src", "../images/tree-" + number + ".jpg");
	});
});