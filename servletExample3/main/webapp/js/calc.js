$(function(){
	$("#btnCalc").click(function(){
		const numberPattern = /^\d+$/g;
		if($("#num1").val().replace(/\s/g,"")=="") {
			alert("숫자를 입력해 주세요");
			$("#num1").val("");
			$("#num1").focus();
			return;
		}else {
			if($("#num1").val().search(numberPattern)<0) {
				alert("문자를 입력할수 없습니다");
				$("#num1").val("");
				$("#num1").focus();
				return;
			}
		}
		if($("#num2").val().replace(/\s/g,"")=="") {
			alert("숫자를 입력해 주세요");
			$("#num2").val("");
			$("#num2").focus();
			return;
		}else {
			if($("#num2").val().search(numberPattern)<0) {
				alert("문자를 입력할수 없습니다");
				$("#num2").val("");
				$("#num2").focus();
				return;
			}
		}
		/*
		$("#frm").attr({
			"method":"post",
			"action":"/servletExample2/calcServlet"
		});
		$("#frm").submit();*/
		
		$.ajax({
			url:"/servletExample2/calcServlet2",
			type:"post",
			data : $("#frm").serialize(),
			dataType : "text",
			success : function(data) {
				$("#result").val(data);
			},
			error : function(xhr, textStatus, errorThrown) {
				alert(textStatus + " (HTTP - " + xhr.status + " / " + errorThrown);
			}
		});
	});
});