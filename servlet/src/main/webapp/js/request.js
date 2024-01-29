$(function(){
	const hship = ["일반고","특목고","특성화고"];
	const ship = ["정보통신학과","국문학과","기계공학과","회계학과","전기전자학과","경영학과","사회복지학과"];
	
	$("input [name='scholarship']").click(function(){
		$("major").empty();
		if($(this).val()=="고졸"){
			for(i=0; i<hship.length; i++) {
				option = $("<option>");
				option.attr("value", hship[i]);
				option.append(hship[i]);
				$("#major").append(option);
			}
		}else {
			for(i=0; i<ship.length; i++){
				option = $("<option>");
				option.attr("value",ship[i]);
				option.append(ship[i]);
				if(i ==1) {
					option.prop("selected","true");
				}
				$("#major").append(option);
			}
		}
	});
	
	$("input[name='scholarship']:eq(0)").prop("checked","true");
	$("iput[name='scholarship']:eq(0)").click();
	
	$("#sendBtn").click(function(){
		if($("#name").val().replace(/\s/g,"")==""){
			alert("이름을 입력해 주세요");
			$("#name").val("");
			$("#name").focus();
			return;
		}
		if($("#birth").val().replace(/\s/g,"")==""){
			alert("생년월일을 입력해주세요");
			$("#birth").val("");
			$("#birth").focus();
			return;
		}
		if(!$("input[name='language']").is(":checked")){
			alert("사용가능 언어를 선택해주세요");
			$("input[name='language']:eq(0)").focus();
			return;
		}
		$("#dataForm").attr({
			"method":"post",
			"action":"request.jsp"
		});
		$("#dataForm").submit();
	});
	$("#resetBtn").click(function(){
		$("#dataForm").each(function(){
			this.reset();
		});
		$("input[name='scholarship']:eq(0)").prop("checkde","true");
		$("input[name='scholarship']:eq(0)").click();
	});
});