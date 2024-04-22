
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
            $('#saveMessage').empty();
            
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
                $('#saveMessage').html(errorMessage);
                return false;
            } else {
                return true;
            }
        };
        
        /*$('#editForm').submit(function(e) {
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
        });*/


        /*$('#saveButton').click(function() {
            var pageid = $('#pageid').val();
            var pagename = $('#pagename').val();
            var pagedesc = $('#pagedesc').val();
            $.ajax({
                type: 'POST',
                url: '../controlers/page.cfc?method=savePage',
                data: {
                    pageid: pageid,
                    pagename: pagename,
                    pagedesc: pagedesc
                },
                dataType: 'json', 
                success: function(response) {
                    if (response.isSuccess) { 
                        
                        alert(response.message);
                    } else {
                        alert(response.message);
                    }
                },
                error: function(xhr, status, error) {
                    console.error(xhr.responseText);
                    alert("An error occurred while processing your request.");
                }
            });
            return false;
        });*/

        $('#saveButton').click(function() {
            if (validateFunction()) {
                var pageid = $('#pageid').val();
                var pagename = $('#pagename').val();
                var pagedesc = $('#pagedesc').val();
                $.ajax({
                    type: 'post',
                    url: '../models/page.cfc?method=doesNotExist',
                    data: { pagename: pagename },
                    dataType: 'json',
                    success: function(response) {
                        if (response.message) {
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
                                    if (response.message) {
                                        $('#saveMessageSuccess').text(response.message);
                                    } else {
                                        $('#saveMessageSuccess').text(response.message);
                                    }
                                    setTimeout(function() {
                                        window.location.href = "../view/list.cfm";
                                    }, 1000);
                                },
                                error: function(xhr, status, error) {
                                    console.log(xhr.responseText);
                                }
                            });
                        } else {
                            $('#saveMessage').text("Page with the same name already exists. Cannot be added.");
                        }
                    },
                    error: function(xhr, status, error) {
                        console.error(xhr.responseText);
                        alert("An error occurred while processing your request.");
                    }
                });
            }
            return false;
        });
        
        
        $('#deleteLink').click(function(e) {
            e.preventDefault(); 
            var pageid = $(this).attr('data-pageid');
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

                            $(e.target).closest("tr").remove();
                        } 
                    },

                });
            }
        });
        
    });
    

    