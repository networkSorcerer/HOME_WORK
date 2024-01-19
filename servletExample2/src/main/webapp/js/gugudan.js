$(function(){
	$("#btn").on("click", function(){
		if($("#dan").val().replace(/\s/g,"")=="") {
			alert("구구단을 입력해 주세요");
			$("#dan").val("");
			$("#dan").focus();
			return;
		}
		
		let dan = $("#dan").val();
		if(dan < 2 || dan > 9) {
			alert("구구단은 2단부터 9단까지만 입력 가능합니다");
			$("#dan").val("");
			$("#dant").focus();
			return;
		}
		$("#frm").attr({
			"method":"get",
			"action":"/servletExample2/gugudan"
		});
		$("#frm").submit();
			
	});
});