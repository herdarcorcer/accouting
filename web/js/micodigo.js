$(document).ready(function() {

    $("#frm1").submit(function(event)
    {
        event.preventDefault();
        $.ajax({
            url: "verlist.jsp",
            type: "get",
            data: $("#frm1").serialize(),
            beforeSend: function()
            {
                $("#mensaje").html("");
                
            },
            success: function(res)
            {
                $("#lstdep").html(res);
            }
        });

    });
    

});

