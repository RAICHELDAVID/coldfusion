<cfinclude  template="header.cfm">
<div class="container-fluid">

    <cfinclude template="navigation.cfm" >
    <cfif session.userRole eq "admin" or session.userRole eq "editor">
        <p class="loginHeading text-center">listpage</p>
        <cfset local.pageService = createObject("component", "CFC_models.page")>
        <cfif structKeyExists(url, "logout")>
            <cfset local.pageService.logout()>
            <cflocation url="login.cfm">
        </cfif>
        <cfset local.pages = local.pageService.getPages()>

        <table class=" table table-striped center mx-3">
            <tr>
                <th class="tableHeader">Page Name</th>
                <th class="tableHeader">Page Description</th>
                <th class="tableHeader">Action</th>
            </tr>
            <cfoutput query="local.pages">
                <tr>
                    <td>#pagename#</td>
                    <td>#pagedesc#</td>
                    <td>
                        <a href="editPage.cfm?pageid=#local.pages.pageid#" class="editLink">edit</a>
                        <!---<a href="../models/page.cfc?method=deletePage&pageid=#local.pages.pageid#" id="deleteLink">delete</a>--->
                        <a href="" class="deleteLink" data-pageid="#local.pages.pageid#">delete</a>                   
                    </td>

                </tr>
                
            </cfoutput>
        </table>
        <div class="d-flex justify-content-center">
            <form action="editPage.cfm" method="post">
                <input type="submit" value="Add Page" class="btn btn-primary loginButton">
            </form>
        </div>
    <cfelse>
        <cfset local.userDashboard = createObject("component", "CFC_models.page")>
        <cfset local.pages = local.userDashboard.getPages()>
        <cfif session.userRole eq "user">
            <p class="loginHeading text-center">Welcome to listpage</p>
            <table class="table table-striped center">
                <tr>
                    <th class="tableHeader">Page Name</th>
                    <th class="tableHeader">Page Description</th>
                </tr>
                <cfoutput query="local.pages">
                    <tr>
                        <td>#pagename#</td>
                        <td>#pagedesc#</td>
                    </tr>
                </cfoutput>
            </table>

        </cfif>
    </cfif>
    <cfinclude template="footer.cfm" >

</div>
</body>
</html>
