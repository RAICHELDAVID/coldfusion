
$(document).ready(function() {
    $('#loginBtn2').click(function(event) {
        event.preventDefault(); 
        
        var strName = $("#strName").val().trim();
        var strUsername = $("#strUsername").val().trim();
        var strPassword = $("#strPassword").val().trim();
        var strConfirmPassword=$("#strConfirmPassword").val().trim();
        var strRole =  $("#strRole").val().trim();
        
        $.ajax({
            type: 'post',
            url: 'controllers/main/main.cfc?method=validateFormFields',
            data: {
                strName: strName,
                strUsername: strUsername,
                strPassword: strPassword,
                strConfirmPassword:strConfirmPassword,
                strRole: strRole 
            },
            dataType: 'json',
            success: function(response) {
                if (response.success) {
                    addToTable(strName,strUsername,strPassword,strRole);
                } else {
                    $("#message").text(response.message.join(', ')).css("color", "red");
                }
            },

        });
    });
    addToTable=function(strName,strUsername,strPassword,strRole){
        $.ajax({
            type:'post',
            url:'models/common.cfc?method=insertIntoTable',
            data:{
                strName: strName,
                strUsername: strUsername,
                strPassword: strPassword,
                strRole: strRole
            },
            dataType:'json',
            success:function(response){
                if(response.success){
                    $("#message").text(response.message).css("color", "green");
                }
            }
        })

    }
});

