let number = 1;
$(function(){
	$("button:eq(0)").on("click", function(){
		let li1 = $("<li>").css("color", "red").html("추가항목" + (number++));
		li1.addClass("liFirst");
		let li2 = $("<li>").css("color", "green").html("추가항목" + (number++));
		let li3 = $("<li>").css("color", "blue").html("추가항목" + (number++));
		
		li2.click(function(){
			$(this).remove();
		});
		
		li3.click(function(){
			$(this).remove();
		});
		
		$("ul").append(li1).append(li2).append(li3)
	});
	
	$(document).on("click", ".liFirst", function(){
		$(this).remove();
	});
	
	$("#print").on("click", function(){
		$("div#result").html("");
		let h3 = $("<h3>").html("무엇보다 중요한 것은 아프지 않는 것 .. 오늘도 최선을 다해...");
		let p = $("<p>").html("노력은 절대 배신하지 않는다");
		
		let img = $("<img>");
		img.attr("src", "../images/doit.jpg");
		
		let btn = $("<button>");
		btn.attr({
			"type":"button",
			"class":"resetBtn"
		});
		btn.html("초기화");
		
		$("div#result").append(h3).append(p.append(img)).append(btn);
	});
	
	$(document).on("click", ".resetBtn", function(){
		$("div#result").empty();
	});
});