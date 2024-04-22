<!---<cfset variables.pageid=0>
<cfset variables.pagename = "">
<cfset variables.pagedesc = "">
<cfif structKeyExists(url, "pageid")>
    <cfset variables.pageid = url.pageid>
    <cfset local.components = createObject("component", "admin.page")>
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
        <cfset local.editComponents = createObject("component","admin_edit.page").editPageFunction(form.pageid,form.pagename,form.pagedesc)>
        <cfif !local.editComponents>
            <cfoutput>pagecontain alphabets only
            </cfoutput>
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
        <h2 class="text-center loginHeading">Save page</h2>
        <!---<p class="errorP">#variables.Errormessage#</p>
        <p class="successP">#variables.Successmessage#</p>--->
        <p class="text-center" id="errorMessage" style="color:red;height:10px;"></p> 
        <div class="row justify-content-center">
            <form action="" class="col-sm-5 col-xs-5" id="editForm" method="post">
                <div class="mb-3 row">
                    <label for="pagename" class="col-sm-2 col-form-label username w-auto">Page Name:</label><br>
                    <div>
                        <input type="text" name="pagename"class="form-control" value="#variables.pagename#" id="pagename"><br>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="pagedesc" class="col-sm-2 col-form-label username w-auto">Page Description:</label><br>
                    <div>
                        <textarea name="pagedesc" class="form-control" id="pagedesc">#variables.pagedesc#</textarea><br><br>
                    </div>
                </div>
                <input type="hidden" name="pageid" value="#variables.pageid#" id="pageid">
                <!---<input type="submit" name="submit" value="save page">
                <input type="button" value="back" onclick="window.location.href='list.cfm';">--->
                <div class="mb-3 text-center">
                    <button type="submit" class="btn btn-secondary " onclick="window.location.href='list.cfm';">Cancel</button>
                    <button type="submit" class="btn btn-primary loginButton" name="submit" >Save page</button>
                </div>
                <p id="updateMessage" class="text-center" style="color:green;height:10px;"></p>
            </form>
        </div>
    </cfoutput>
    <cfinclude template="footer.cfm" >
    <!---<div class="welcomeFooter d-flex justify-content-center mb-2">
        <a href="list.cfm" class="p-2">Back</a>
        <a href="components/page.cfc?method=logout" class="p-2">logout</a>
    </div>--->

</body>
</html>--->
<cfset variables.pageid = 0>
<cfset variables.pagename = "">
<cfset variables.pagedesc = "">

<cfinclude template="header.cfm">
<cfinclude template="navigation.cfm">
<cfinclude template="../controlers/action.cfm">

<div class="container savepageContainer" >
    <h2 class="text-center loginHeading">Save page</h2>
    <div class="row justify-content-center">
<cfoutput>
        <form action="editPage.cfm" class="col-sm-5 col-xs-5" id="editForm" method="post">
            <div class="mb-3 row">
                <label for="pagename" class="col-sm-2 col-form-label username w-auto">Page Name:</label>
                <input type="text" name="pagename" class="form-control" value="#variables.pagename#" id="pagename">
            </div>
            <div class="mb-3 row">
                <label for="pagedesc" class="col-sm-2 col-form-label username w-auto">Page Description:</label>
                <textarea name="pagedesc" class="form-control" id="pagedesc">#variables.pagedesc#</textarea>
            </div>
            <input type="hidden" name="pageid" value="#variables.pageid#" id="pageid">
            <div class="mb-3 text-center">
                <button type="submit" class="btn btn-secondary" onclick="window.location.href='list.cfm';">Cancel</button>
                <button type="submit" class="btn btn-primary loginButton" id="saveButton" name="submit">Save page</button>
            </div>
        </form>
        <p id="saveMessage" ></p>
        <p id="saveMessageSuccess" ></p>
</cfoutput>
    </div>
</div>

<cfinclude template="footer.cfm">







