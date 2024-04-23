
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
/*form validation*/
        validateFunction = function() {        
            $('#saveMessage').empty();
            
            var pagename = $('#pagename').val().trim();
            var pagedesc = $('#pagedesc').val().trim();
            var validData = /^[a-zA-Z\s]+$/; 
            var validateData = /^(?=.*[a-zA-Z])[a-zA-Z\d\s]+$/; 
            var errors = [];
            if(pagename!=''){
                if (!pagename.match(validData)) {
                    errors.push("Page Name should contain only alphabets!");
                }
            }else{
                errors.push("Page Name is required!");
            }
            if(pagedesc!=''){
                if (!pagedesc.match(validateData)) {
                    errors.push("Page Description should not contain digits only!");
                }
            }else{
                errors.push("Page description is required!");
    
            }
                 
            if (errors.length > 0) {
                var errorMessage = errors.join('<br>');
                $('#saveMessage').html(errorMessage);
                return false;
            } else {
                return true;
            }
        };

        /*add or edit only unique pagename*/
        $('#saveButton').click(function(event) {
            event.preventDefault(); 
            if (validateFunction()) {
                var pageid = $('#pageid').val();
                var pagename = $('#pagename').val();
                var pagedesc = $('#pagedesc').val();
                $.ajax({
                    type: 'POST',
                    url: '../models/page.cfc?method=doesNotExist',
                    data: { 
                        pageid: pageid,
                        pagename: pagename,
                        pagedesc: pagedesc
                    },
                    dataType: 'json',
                    success: function(response) {
                        if (response.message==true) {
                            savePagegggh(pageid, pagename, pagedesc);
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
        });
        
        function savePagegggh(pageid, pagename, pagedesc) {
            $.ajax({
                type: 'POST',
                url: "../controlers/page.cfc?method=savePage",
                dataType: "json",
                data: {
                    pageid: pageid,
                    pagename: pagename,
                    pagedesc: pagedesc
                },
                success: function(response) {
                    console.log(response);
                    if (response.isSuccess) {
                        $('#saveMessageSuccess').text(response.message);
                        setTimeout(function() {
                            window.location.href = "../view/list.cfm";
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
        
        
        /*delete page*/
        $('.deleteLink').click(function(e) {
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
            return false;
        });
      
        
    });
    

    