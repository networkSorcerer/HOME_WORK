$(function(){
    $.ajax({
        url: "/servletExample2/subjectNumber",
        type: "post",
        dataType: "text",
        success: function(data) {
            $("#s_num").val(data);
        },
        error: function(xhr, textStatus) {
            alert(textStatus + " (HTTP -" + xhr.status + ")");
        }
    });

    $(document).on("click", "#insertBtn", () => {
        if (!chkData("#s_name", "학과명을 ")) return;
        else {
            $("#subject").attr({
                "method": "post",
                "action": "/servletExample2/insert"
            });
            $("#subject").submit();
        }
    });

    $("#resetBtn").on("click", () => {
        $("#s_name").val("");
    });

    $("#listBtn").on("click", () => {
        location.href = "/servletExample2/list";
    });
});
