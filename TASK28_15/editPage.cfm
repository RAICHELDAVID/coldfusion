<cfset path = GetTemplatePath()>
<cfset cfm=path>
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
    <cfset variables.pagename = form.pagename>
    <cfset variables.pagedesc = form.pagedesc>
    <cfset local.validData = "^[a-zA-Z]+$">
    <cfset local.validateData = "^(?=.*[a-zA-Z])[a-zA-Z\d]+$">

    <!---using listFind() function
    <cfset variables.pagename = form.pagename>
    <cfset variables.pagedesc = form.pagedesc>
    <cfset specialCharList="!,@,%,$,^,&,*,(,),_,-,+,*,/">
    <cfloop index="i" from="1" to="#len(variables.pagename)#">
            <cfset currentChar = mid(form.pagename, i, 1)>
            <cfif isValid("integer",currentChar) or listFind(specialCharList, currentChar)>
                <cfset variables.Errormessage &= "Page Name should not contain digits or special characters!" & "<br>">
                <cfbreak>
            </cfif>
    </cfloop>--->


    <!---<cfif isNumeric(variables.pagedesc)>
            <cfset variables.Errormessage &= "Page description should not contain only digits!" & "<br>">
    </cfif>--->
    <!---<cfif isValid("integer", variables.pagedesc)>
            <cfset variables.Errormessage &= "Page Description is invalid!" & "<br>">
    </cfif>--->
        
    <cfif not isValid("regex", form.pagename, local.validData)>
        <cfset variables.Errormessage &= "Page Name is invalid!" & "<br>">
    </cfif>
        
    <cfif not isValid("regex", form.pagedesc, local.validateData)>
        <cfset variables.Errormessage &= "Page Description is invalid!" & "<br>">
    </cfif>

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
<cfinclude  template="header.cfm">

<div class="container-fluid">
    <!---<nav class="navbar bg-body-tertiary">
        <div class="container-fluid d-flex">
            <a class="navbar-brand d-flex" href="editPage.cfm">
                <img src="./assets/images/logo.png" alt="Logo" width="53" height="50" class="d-inline-block align-text-top">
                <p class="mt-2 bodytitle">DigifyCMS</p>
            </a>
            <a href="list.cfm">Home</a>
        </div>
    </nav>--->
    <cfinclude template="navigation.cfm" >
    <cfoutput>
        <h2 class="text-center loginHeading">Welcome to the ADD page</h2>
        <p class="errorP">#variables.Errormessage#</p>
        <p class="successP">#variables.Successmessage#</p>
        <div class="row justify-content-center">
            <form action="" class="col-sm-5 col-xs-5" method="post">
                <div class="mb-3 row">
                    <label for="pagename" class="col-sm-2 col-form-label username w-auto">Page Name:</label><br>
                    <div>
                        <input type="text" name="pagename"class="form-control" value="#variables.pagename#" ><br>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="pagedesc" class="col-sm-2 col-form-label username w-auto">Page Description:</label><br>
                    <div>
                        <textarea name="pagedesc" class="form-control">#variables.pagedesc#</textarea><br><br>
                    </div>
                </div>
                <input type="hidden" name="pageid" value="#variables.pageid#">
                <!---<input type="submit" name="submit" value="save page">
                <input type="button" value="back" onclick="window.location.href='list.cfm';">--->
                <div class="mb-3 text-center">
                    <button type="submit" class="btn btn-primary loginButton" name="submit">Save page</button>
                    <button type="submit" class="btn btn-secondary ">Cancel</button>
                </div>
            </form>
        </div>
    </cfoutput>
    <cfinclude template="footer.cfm" >
    <!---<div class="welcomeFooter d-flex justify-content-center mb-2">
        <a href="list.cfm" class="p-2">Back</a>
        <a href="components/page.cfc?method=logout" class="p-2">logout</a>
    </div>--->

</body>
</html>






