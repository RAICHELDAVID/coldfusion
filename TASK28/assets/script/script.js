
    $(document).ready(function() {   
/*loginvalidation*/
        $('#loginBtn2').click(function(e) {
            e.preventDefault();
            var username = $("#username").val().trim();
            var password = $("#password").val().trim();
            
            $.ajax({
                type: "POST",
                url: "../models/page.cfc?method=doLogin",
                dataType: "json",
                data: {
                    username: username,
                    password: password
                },
                success: function(response) {
                    console.log(response);
                    if (response.message==true) {
                        $("#successMsg").text('Login successful!');
                        setTimeout(function() {
                            window.location.href = "../view/homePage.cfm";
                        }, 1000);
                    } else if(response.message==false){
                        $("#errorMsg").text('Invalid username or password!'); 
                    }
                },
            });
        });

        validateFunction = function() {        
            $('#errorMessage').empty();
            
            var pagename = $('#pagename').val().trim();
            var pagedesc = $('#pagedesc').val().trim();
            var validData = /^[a-zA-Z\s]+$/; 
            var validateData = /^(?=.*[a-zA-Z])[a-zA-Z\d\s]+$/; 
            var errors = [];
            
            if (!pagename.match(validData)) {
                errors.push("Page Name should contain only alphabets!");
            }
            
            if (!pagedesc.match(validateData)) {
                errors.push("Page Description should not contain digits only!");
            }
            
            if (errors.length > 0) {
                var errorMessage = errors.join('<br>');
                $('#errorMessage').html(errorMessage);
                return false;
            } else {
                return true;
            }
        };
        
        $('#editForm').submit(function(e) {
            e.preventDefault(); 
            
            if (validateFunction()) {
                var pageid = $('#pageid').val().trim();
                var pagename = $('#pagename').val();
                var pagedesc = $('#pagedesc').val();
                
                $.ajax({
                    type: "POST",
                    url: "../models/page.cfc?method=savePage",
                    dataType: "json",
                    data: {
                        pageid: pageid,
                        pagename: pagename,
                        pagedesc: pagedesc
                    },
                    success: function(response) {            
                        if (response.message == "updated") {
                            $('#updateMessage').text('Page updated'); 
                            setTimeout(function() {
                                window.location.href = "../view/list.cfm";
                            }, 1000);
                        }
                        if(response.message == "inserted") {
                            $('#updateMessage').text('Page inserted');
                            setTimeout(function() {
                                window.location.href = "../view/list.cfm";
                            },1000);
                        }
                    },
                    error: function(xhr, status, error) {
                        console.log(xhr.responseText);
                    }
                });
            }
        });
        
        $(".deleteLink").click(function(e) {
            e.preventDefault(); 
            var pageid = $(this).attr('data-pageid');
                var data=$(this);
                console.log(pageid);
                
                console.log(data);
            if(confirm("click OK to delete this page?")) { 
                $.ajax({
                    type: "POST",
                    url:"../models/page.cfc?method=deletePage",
                    data: {
                        pageid: pageid
                    },
                    dataType: "json",
                    success: function(response) {
                        if (response) {
                            $(data).parents("tr").remove();

                            //$(e.target).closest("tr").remove();
                        } 
                    },

                });
            }
        });
        
    });
    

    