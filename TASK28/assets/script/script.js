$(document).ready(function() {
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
});

