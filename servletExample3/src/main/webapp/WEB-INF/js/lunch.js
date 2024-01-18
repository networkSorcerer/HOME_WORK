$(function(){
	$("#btn").click(function(){
		if($("select[name='lunch'] > option:selected").index() < 0) {
			alert("점심 메뉴를 선택해 주세요 ");
			return;
		} else {
			if($("select[name='lunch'] > option:selectd").length < 2) {
				alert("두 개 이상의 점심메뉴를 선택해 주세요");
				return;
			}
			
			$("#form").attr({
				"method":"post",
				"action":"/servletExample3/todayMenu"
			});
			$("#form").submit();
		}
	})
})