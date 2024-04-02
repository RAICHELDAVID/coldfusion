<!DOCTYPE html>
<html>
<head>
    <title>Edit Page</title>
</head>
<body>
    <cfoutput>
        <form action="addPage.cfm" method="post">
            <label for="pagename">Page Name:</label><br>
            <input type="text" id="pagename" name="pagename" required><br>
            <label for="pagedesc">Page Description:</label><br>
            <textarea id="pagedesc" name="pagedesc" required></textarea><br><br>
            <input type="submit" value="ADD">
        </form>
    </cfoutput>
    <cfif structKeyExists(form, "pagename") and structKeyExists(form, "pagedesc")>
        <cfset local.userComponent = createObject("component", "components.page")>
        
        <cfset local.result = local.userComponent.addPage(form.pagename, form.pagedesc)>
        <cfoutput>#local.result#</cfoutput>
    </cfif>

</body>
</html>