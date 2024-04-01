<!DOCTYPE html>
<html>
<head>
    <title>Edit Page</title>
</head>
<body>
    <cfdump  var="#pageid#">
    <cfoutput>
        <form action="components/page.cfc?method=editPage" method="post">
            <input type="hidden" id="pageid" name="pageid" value="#pageid#">
            <label for="pagename">Page Name:</label><br>
            <input type="text" id="pagename" name="pagename" required><br>
            <label for="pagedesc">Page Description:</label><br>
            <textarea id="pagedesc" name="pagedesc" required></textarea><br><br>
            <input type="submit" value="Update Page">
        </form>
    </cfoutput>
    <cfdump  var="#form#">
    <cfset variable = "#form.pageid#">
    <cfdump  var="#variable#">


</body>
</html>