
<!---<!DOCTYPE html>
<html>
<head>
    <title>Edit Page</title>
</head>
<body>
<cfif not structKeyExists(session, "loggedIn") or not session.loggedIn>
    <cflocation url="login.cfm">
<cfelse>
    <cfset user = createObject("component", "components.page")>
    <cfif structKeyExists(form, "pagename") and structKeyExists(form, "pagedesc")>
        <cfset local.userComponent = createObject("component", "components.page")>
        <cfif structKeyExists(form, "pageid")>
            <cfset local.result = user.editPage(form.pageid, form.pagename, form.pagedesc)>
        <cfelse>
            <cfset local.result = user.addPage(form.pagename, form.pagedesc)>
        </cfif>
    </cfif>

    <form action="editPage.cfm" method="post">
        <cfif structKeyExists(form, "pageid") and structKeyExists(form, "pagename") and structKeyExists(form, "pagedesc")>
            <input type="hidden" id="pageid" name="pageid" value="#form.pageid#">
            <label for="pagename">Page Name:</label><br>
            <input type="text" id="pagename" name="pagename" required><br>
            <label for="pagedesc">Page Description:</label><br>
            <textarea id="pagedesc" name="pagedesc"  required></textarea><br><br>
        <cfelse>
            <label for="pagename">Page Name:</label><br>
            <input type="text" id="pagename" name="pagename" required><br>
            <label for="pagedesc">Page Description:</label><br>
            <textarea id="pagedesc" name="pagedesc" required></textarea><br><br>
        </cfif>
        <cfif structKeyExists(form, "pageid")>
            <input type="submit" value="Update Page">
        <cfelse>
            <input type="submit" value="Add Page">
        </cfif>
    </form>
 
</cfif>
</body>
</html>--->

<!DOCTYPE html>
<html>
<head>
    <title>Edit Page</title>
</head>
<body>
<cfoutput>#url.pageid#</cfoutput>
    <cfif structKeyExists(url, "pageid")>
        <cfset local.userComponent = createObject("component", "components.page")>
            
            <cfset local.result = local.userComponent.editPage(url.PAGEID)>
        <cfelse>
            <cfset local.result = user.addPage(form.pagename, form.pagedesc)>
        </cfif>
    
<cfoutput>
    <form action="editPage.cfm" method="post">
        <cfif structKeyExists(url, "pageid")>
            <input type="hidden" id="pageid" name="pageid" value="#url.pageid#">
            <label for="pagename">Page Name:</label><br>
            <input type="text" id="pagename" name="pagename" value="#pagename#" required><br>
            <label for="pagedesc">Page Description:</label><br>
            <textarea id="pagedesc" name="pagedesc"  required>#pagedesc#</textarea><br><br>
        <cfelse>
            <label for="pagename">Page Name:</label><br>
            <input type="text" id="pagename" name="pagename" required><br>
            <label for="pagedesc">Page Description:</label><br>
            <textarea id="pagedesc" name="pagedesc" required></textarea><br><br>
        </cfif>
        <cfif structKeyExists(form, "pageid")>
            <input type="submit" value="Update Page">
        <cfelse>
            <input type="submit" value="Add Page">
        </cfif>
    </form>
 
</cfoutput>
</body>
</html>