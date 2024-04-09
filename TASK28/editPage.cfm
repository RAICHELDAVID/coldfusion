<cfset variables.pageid=0>
<cfset variables.pagename = "">
<cfset variables.pagedesc = "">
<cfset variables.message="">


<cfif structKeyExists(url, "pageid")>
    <cfset variables.pageid = url.pageid>
    <cfset local.components = createObject("component", "components.page")>
    <cfset local.result = local.components.getPages(variables.pageid)>
    <cfloop query="local.result">
        <cfif local.result.pageid EQ variables.pageid>
            <cfset variables.pagename = local.result.pagename>
            <cfset variables.pagedesc = local.result.pagedesc>
            <cfbreak>
        </cfif>
    </cfloop>
</cfif>


<cfif structKeyExists(form, "submit")>
    <cfset local.components = createObject("component","components.page")>
    <cfset local.validData = "^[a-zA-Z]+$">
    <cfset local.validateData = "^(?=.*[a-zA-Z])[a-zA-Z\d]+$">
    
    <!---<cfif structKeyExists(url, "pageid")>--->
        <cfset variables.pagename = form.pagename>
        <cfset variables.pagedesc = form.pagedesc>
        
        <cfif not isValid("regex", form.pagename, local.validData)>
            <cfset variables.message &= "Page Name is invalid!" & "<br>">
        </cfif>
        
        <cfif not isValid("regex", form.pagedesc, local.validateData)>
            <cfset variables.message &= "Page Description is invalid!" & "<br>">
        </cfif>
        
        <cfif variables.message eq "">
            <cfset local.result = local.components.savePage(variables.pageid, form.pagename, form.pagedesc)>
            <cfif local.result>
                <cfset variables.message = "Page saved successfully!" & "<br>">
            </cfif>
        </cfif>
    <!---</cfif>--->
</cfif>


<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="style/style.css">
</head>
<body>

<cfoutput>
    <p class="errorP">#variables.message#</p>
    <h1>content management system</h1>
    <div>
        <form action="" method="post">
            <label for="pagename">Page Name:</label><br>
            <input type="text" name="pagename" value="#variables.pagename#" ><br>
            <label for="pagedesc">Page Description:</label><br>
            <textarea name="pagedesc" >#variables.pagedesc#</textarea><br><br>
            <input type="hidden" name="pageid" value="#variables.pageid#">
            <input type="submit" name="submit" value="save page">
            <input type="button" value="back" onclick="window.location.href='list.cfm';">
        </form>
    </div>
</cfoutput>

</body>
</html>

