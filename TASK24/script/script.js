$(document).ready(function(){
    $('#checkEmailBtn').click(function(){
        var email = $('#email').val();
        $.ajax({
            type: 'POST',
            url: 'check_email.cfc?method=checkEmail',
            data: {email: email},
            success: function(response){
                if(response == "exists"){
                    $('#errorMessage').text("Email ID is already subscribed.");
                    $('#submitBtn').prop('disabled', true);
                } else {
                    $('#errorMessage').text("");
                    $('#submitBtn').prop('disabled', false);
                }
            }
        });
    });
});
