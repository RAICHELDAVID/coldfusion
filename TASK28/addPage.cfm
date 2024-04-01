<!DOCTYPE html>
<html>
<head>
    <title>Edit Page</title>
</head>
<body>
    <cfoutput>
        <form action="components/page.cfc?method=addPage" method="post">
            <label for="pagename">Page Name:</label><br>
            <input type="text" id="pagename" name="pagename" required><br>
            <label for="pagedesc">Page Description:</label><br>
            <textarea id="pagedesc" name="pagedesc" required></textarea><br><br>
            <input type="submit" value="ADD">
        </form>
    </cfoutput>

</body>
</html>