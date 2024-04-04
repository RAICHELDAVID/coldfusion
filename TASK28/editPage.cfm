<!DOCTYPE html>
<html>
<head>
    <title>Edit Page</title>
</head>
<body>

<cfif structKeyExists(form, "pagename") and structKeyExists(form, "pagedesc")>
    <cfset local.userComponent = createObject("component", "components.page")>
    
    <cfif structKeyExists(form, "pageid")>
        <cfset local.result = local.userComponent.editPage(form.pageid, form.pagename, form.pagedesc)>
    <cfelse>
        <cfset local.result = local.userComponent.addPage(form.pagename, form.pagedesc)>
    </cfif>
    
    <cfoutput>#local.result#</cfoutput>
</cfif>

<cfoutput>
    <form action="editPage.cfm" method="post">
        <cfif structKeyExists(form, "pageid")>
            <input type="hidden" id="pageid" name="pageid" value="#form.pageid#">
        </cfif>
        
        <label for="pagename">Page Name:</label><br>
        <input type="text" id="pagename" name="pagename" required><br>
        <label for="pagedesc">Page Description:</label><br>
        <textarea id="pagedesc" name="pagedesc" required></textarea><br><br>
        
        <cfif structKeyExists(form, "pageid")>
            <input type="submit" value="Update Page">
        <cfelse>
            <input type="submit" value="Add Page">
        </cfif>
    </form>
</cfoutput>

</body>
</html>
