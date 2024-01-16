$(function(){
	$("#subjectInsert").on("click", ()=> {
		location.href="/servletExample2/subject/subjectForm.jsp";
	});
	
	$(".updateBtn").on("click", ()=> {
		let no = $(this).parents("tr").attr("data-no");
		consolee.log(no);
		$("#no").val(no);
		
		let s_num = $(this).parents("tr").find("td:eq(1)").html();
		console.log(s_num);
		$("#s_name").val(s_name);
		
		let s_name =$(this).parents("tr").find("td:eq(2)").html();
		console.log(s_name);
		$("#s_name").val(s_name);
		
		$("#inserBtn").html("수정완료");
		$("#insertBtn").addClass("upBtn");
		$(".upBtn").removeAttr("id");
	});
	$(".deleteBtn").on("click", function(){
		let s_num = $(this).parents("tr").find("td:eq(1)").html();
		let no = $(this).parents("tr").attr("data-no");
		
		$.ajax({
			url : "/servletExample2/studentCheck",
			type : "post",
			data : "s_num=" + s_num,
			dataType : "text",
			success : function(data) {
				console.log(s_num + "/" +data);
				if(data > 0) {
					alert("소속된 학생이 존재함으로 학과데이터를 삭제할 수 없습니다");
					return;
				}else {
					if(confirm("삭제하시겠습니까?")){
						console.log(no);
						location.href="/servletExample2/delete?no=" + no;
					}
				}
			},
			error : function(xhr, textStatus) {
				alert(textStatus + " (HTTP -" + xhr.status + " )");
			}
		});
	});
	$("#searchAllbtn").on("click", ()=> {
		location.href = "/servletExample2/list";
	});
});