<cfinclude  template="header.cfm">
<div class="container-fluid">
    <!---<nav class="navbar bg-body-tertiary">
        <div class="container-fluid d-flex">
            <a class="navbar-brand d-flex" href="list.cfm">
                <img src="./assets/images/logo.png" alt="Logo" width="53" height="50" class="d-inline-block align-text-top">
                <p class="mt-2 bodytitle">DigifyCMS</p>
            </a>
            <a href="homePage.cfm">Home</a>
        </div>
    </nav>--->
    <cfinclude template="navigation.cfm" >
    <cfif session.userRole eq "admin" or session.userRole eq "editor">
        <p class="loginHeading text-center">Welcome to listpage</p>
        <cfset local.pageService = createObject("component", "admin.page")>
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
                         <a href="../modals/page.cfc?method=deletePage&pageid=#local.pages.pageid#" class="updateLink">delete</a>
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
        <cfset local.userDashboard = createObject("component", "admin.page")>
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
    <!---<div class="welcomeFooter d-flex justify-content-center mb-2">
        <a href="homePage.cfm" class="p-2">Home</a>
        <a href="components/page.cfc?method=logout" class="p-2">logout</a>
    </div>--->
</div>
</body>
</html>
