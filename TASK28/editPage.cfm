<!DOCTYPE html>
<html>
<head>
    <title>Edit Page</title>
</head>
<body>
    <cfoutput>
        <form action="editPage.cfm" method="post">
            <input type="hidden" id="pageid" name="pageid" value="#pageid#">
            <label for="pagename">Page Name:</label><br>
            <input type="text" id="pagename" name="pagename" required><br>
            <label for="pagedesc">Page Description:</label><br>
            <textarea id="pagedesc" name="pagedesc" required></textarea><br><br>
            <input type="submit" value="Update Page">
        </form>
    </cfoutput>
    <cfif structKeyExists(form, "pageid") and structKeyExists(form, "pagename") and structKeyExists(form, "pagedesc")>
        <cfset local.userComponent = createObject("component", "components.page")>
        
        <cfset local.result = local.userComponent.editPage(form.pageid, form.pagename, form.pagedesc)>
        <cfoutput>#local.result#</cfoutput>
    </cfif>


</body>
</html>