<cfset variables.pageid=0>
<cfset variables.pagename = "">
<cfset variables.pagedesc = "">
<cfset variables.Errormessage="">
<cfset variables.Successmessage="">

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
    <!---<cfset local.validData = "^[a-zA-Z]+$">
    <cfset local.validateData = "^(?=.*[a-zA-Z])[a-zA-Z\d]+$">--->
    
    <cfset variables.pagename = form.pagename>
    <cfset variables.pagedesc = form.pagedesc>

    <cfloop index="i" from="1" to="#len(variables.pagename)#">
        <cfset currentChar = mid(form.pagename, i, 1)>
        <cfif isNumeric(currentChar)>
            <cfset variables.Errormessage &= "Page Name should not contain digits!" & "<br>">
            <cfbreak>
        </cfif>
    </cfloop>
    <cfif isNumeric(variables.pagedesc)>
            <cfset variables.Errormessage &= "Page description should not contain only digits!" & "<br>">
    </cfif>
        
        <!---<cfif not isValid("regex", form.pagename, local.validData)>
            <cfset variables.Errormessage &= "Page Name is invalid!" & "<br>">
        </cfif>
        
        <cfif not isValid("regex", form.pagedesc, local.validateData)>
            <cfset variables.Errormessage &= "Page Description is invalid!" & "<br>">
        </cfif>--->

        <!---<cfif !isvalid("string",variables.pagename)>
            <cfset variables.Errormessage &= "Page name is invalid!" & "<br>">
        </cfif>--->
        <!---<cfif isValid("integer", variables.pagedesc)>
            <cfset variables.Errormessage &= "Page Description is invalid!" & "<br>">
        </cfif>--->
        <cfif variables.Errormessage eq "">
            <cfset local.result = local.components.savePage(variables.pageid, form.pagename, form.pagedesc)>
            <cfif local.result>
                <cfset variables.Successmessage = "Page saved successfully!" & "<br>">
            </cfif>
        </cfif>
        
</cfif>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="assets/style/style.css">
</head>
<body>

    <cfoutput>
        <h1>content management system</h1>
        <p class="errorP">#variables.Errormessage#</p>
        <p class="successP">#variables.Successmessage#</p>
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
    <script src="assets/script/jquery.js"></script>
    <script src="assets/script/script.js"></script>
</body>
</html>






