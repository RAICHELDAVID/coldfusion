$(document).ready(function() {
    console.log("Document ready!"); // Check if document ready event is firing
    $('form').submit(function(event) {
        console.log("Form submitted!"); // Check if form submit event is being captured
        // Reset previous error messages
        $('.errorP').empty();
        // Flag to track if there are any errors
        var hasErrors = false;
        // Validate Page Name
        var pagename = $('input[name="pagename"]').val().trim();
        console.log("Page Name:", pagename); // Check if pagename is being captured
        // Validate Page Description
        var pagedesc = $('textarea[name="pagedesc"]').val().trim();
        console.log("Page Description:", pagedesc); // Check if pagedesc is being captured
        // ... Additional validation logic
    });
});
