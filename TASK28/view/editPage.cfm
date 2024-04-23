<cfset variables.pageid = 0>
<cfset variables.pagename = "">
<cfset variables.pagedesc = "">

<cfinclude template="header.cfm">
<cfinclude template="navigation.cfm">
<cfinclude template="../controlers/action.cfm">

<div class="container savepageContainer" >
    <h2 class="text-center loginHeading">Save page</h2>
    <div class="row justify-content-center">
        <p id="saveMessage" ></p>
        <p id="saveMessageSuccess" ></p>
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
        </cfoutput>
    </div>
</div>

<cfinclude template="footer.cfm">







