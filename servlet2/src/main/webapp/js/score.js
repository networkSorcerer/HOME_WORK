$(function(){
	$("#sendBtn").on("click", ()=>{
		const pattern = /^\d{1,3}$/;
		if($("#score").val().replace(/\s/g,"")=="") {
			alert("점수를 입력해 주세요");
			$("#score").val("");
			$("#score").focus();
			return;
		}else if(!pattern.test($("#score").val())){
			alert("점수는 숫자만 입력해 주셔야 합니다");
			$("score").val("");
			$("#score").focus();
			return;
		} else if($("score").val() < 0 || $("#score").val() > 100) {
			alert("점수는 0~ 100 사이로 입력해주세요");
			$("#score").val("");
			$("#score").focus();
			return;
		}
		/*
		$("#scoreForm").attr({
			"method":"post",
			"action":"score.jsp"
		});
		$("#scoreForm").submit();*/
		$.ajax({
			url:"/servlet2/implicitobject/score2.jsp",
			type:"post",
			data:$("#scoreForm").serialize(),
			dataType : "text",
			success : function(data) {
				$("#result").val(data);
			},
			error : function(xhr, textStatus, errorThrown) {
				alert(textStatus + " ( HTTP - " + xhr.status + " / " + errorThrown );
			}
		});
	});
});