$(document).ready(function() {
    $('#loginBtn2').click(function(e) {
        e.preventDefault();
        var strUsername = $("#username").val().trim();
        var strPassword = $("#password").val().trim();

        $.ajax({
            type: "POST",
            url: "../controllers/page.cfc?method=doLogin",
            dataType: "json",
            data: {
                strUsername: strUsername,
                strPassword: strPassword
            },
            success: function(response) {
                if (response.message == true) {
                    $("#successMsg").text('Login successful!');
                    setTimeout(function() {
                        window.location.href = "../views/homePage.cfm";
                    }, 1000);
                } else {
                    $("#errorMsg").text('Invalid username or password!');
                }
            },
        });
    });
    
    validateFunction = function() {
        $('#saveMessage').empty();

        var strPagename = $('#pagename').val().trim();
        var strPagedesc = $('#pagedesc').val().trim();
        var validData = /^[a-zA-Z\s]+$/;
        var validateData = /^(?=.*[a-zA-Z])[a-zA-Z\d\s]+$/;
        var errors = [];
        if (strPagename == '') {
            errors.push("Page Name is required!");
        }
        else if (!strPagename.match(validData)) {
            errors.push("Page Name should contain only alphabets!");
        }
        if (strPagedesc == '') {
            errors.push("Page description is required!");
        }
        else if (!strPagedesc.match(validateData)) {
            errors.push("Page Description should not contain digits only!");
        }
        if (errors.length > 0) {
            var errorMessage = errors.join('<br>');
            $('#saveMessage').html(errorMessage);
            return false;
        } else {
            return true;
        }
    };

    $('#saveButton').click(function(event) {
        event.preventDefault();
        if (validateFunction()) {
            var pageid = $('#pageid').val();
            var strPagename = $('#pagename').val();
            var strPagedesc = $('#pagedesc').val();
            $.ajax({
                type: 'POST',
                url: '../models/page.cfc?method=pageNotExists',
                data: {
                    pageid: pageid,
                    strPagename: strPagename,
                    strPagedesc: strPagedesc
                },
                dataType: 'json',
                success: function(response) {
                    if (response.message == true) {
                        savePage(pageid, strPagename, strPagedesc);
                    } else {
                        $('#saveMessage').text("Page with the same name already exists. Cannot be added.");
                    }
                },
                error: function(xhr, status, error) {
                    alert("An error occurred while processing your request.");
                }
            });
        }
    });

    function savePage(pageid, strPagename, strPagedesc) {
        $.ajax({
            type: 'POST',
            url: "../models/page.cfc?method=savePage",
            dataType: "json",
            data: {
                pageid: pageid,
                strPagename: strPagename,
                strPagedesc: strPagedesc
            },
            success: function(response) {
                if (response.success) {
                    $('#saveMessageSuccess').text(response.message);
                    setTimeout(function() {
                        window.location.href = "../views/list.cfm";
                    }, 1000);
                } else {
                    $('#saveMessage').text(response.message);
                }
            },
            error: function(xhr, status, error) {
                console.log(xhr.responseText);
                alert("An error occurred while saving the page.");
            }
        });
    }


    $('.deleteLink').click(function(e) {
        e.preventDefault();
        var pageid = $(this).attr('data-pageid');
        if (confirm("click OK to delete this page?")) {
            $.ajax({
                type: "POST",
                url: "../models/page.cfc?method=deletePage",
                data: {
                    pageid: pageid
                },
                dataType: "json",
                success: function(response) {
                    if (response) {
                        $(e.target).closest("tr").remove();
                    }
                },

            });

        }
        return false;
    });


});