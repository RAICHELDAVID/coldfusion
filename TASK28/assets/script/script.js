$(document).ready(function() {

/*client side validation*/
    $('form').submit(function(e) {        
        $('.errorP').empty();
        
        var pagename = $('input[name="pagename"]').val().trim();
        var pagedesc = $('textarea[name="pagedesc"]').val().trim();
        var validData = /^[a-zA-Z]+$/;
        var validateData = /^(?=.*[a-zA-Z])[a-zA-Z\d]+$/;
        var errors = [];
        
        if (!pagename.match(validData)) {
            errors.push("Page Name should contain only alphabets!");
        }
        
        if (!pagedesc.match(validateData)) {
            errors.push("Page Description should not contain digits only!");
        }
        
        if (errors.length > 0) {
            var errorMessage = errors.join('<br>');
            $('.errorP').html(errorMessage);
            return false;
        } else {
            $('form').submit();
            return true;
        }
    });

/*login using ajax*/

$('#loginBtn2').click(function() {
    var username=$("#username").val().trim();
    var password=$("#password").val().trim();
    $.ajax({
        type: "POST",
        url: "../models/page.cfc?method=doLogin",
        datatype: "json",
        data: {
            username:username,
            password:password
        },
        success: function(response) {
            console.log(response);
            if (response){
                $("#successMsg").text('Login successfull !!!!');
                setTimeout(function() {
                    window.location.href="../view/homePage.cfm";
                },1000);
            } else {
                $("#errorMsg").text('Invalid user name or password !!!!'); 
                return false;
            }
        },

    });
    return false;
});


/*update or add using ajax*/
    $('#editForm').submit(function() {
        var pageid=$('#pageid').val().trim();
        var pagename=$('#pagename').val().trim();
        var pagedesc=$('#pagedesc').val().trim();
        $.ajax({
            type:"POST",
            url:"../models/page.cfc?method=savePage",
            datatype:"json",
            data:{pageid:pageid,
                pagename:pagename,
                pagedesc:pagedesc
            },
            success:function(response) {
                console.log(response.message);
                if(response.message =="updated")
                $('#updateMessage').text('page updated');
                setTimeout(function() {
                    window.location.href="../view/list.cfm";
                },1000);
            }
        });
});
});


