<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="assets/style/style.css">
</head>
<body>

    <cfif session.userRole eq "admin" or session.userRole eq "editor">
        <h1>content management system</h1>
        <p class="listP">Welcome to listpage</p>
        <cfset local.pageService = createObject("component", "components.page")>
        <cfif structKeyExists(url, "logout")>
            <cfset local.pageService.logout()>
            <cflocation url="login.cfm">
        </cfif>
        <cfset local.pages = local.pageService.getPages()>
        <table border="1" class="center">
            <tr>
                <th>Page Name</th>
                <th>Page Description</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <cfoutput query="local.pages">
                <tr>
                
                    <td>#pagename#</td>
                    <td>#pagedesc#</td>
                    <td>
                        <a href="editPage.cfm?pageid=#local.pages.pageid#">edit</a>
                    </td>
                    <td>
                        <a href="components/page.cfc?method=deletePage&pageid=#local.pages.pageid#">delete</a>
                    </td>
                </tr>
            </cfoutput>
        </table>
        <div>
            <form action="editPage.cfm" method="post">
                <input type="submit" value="Add Page">
            </form>
            <form action="components/page.cfc?method=logout" method="post">
                <input type="submit" value="logout">
            </form>
        </div>
    <cfelse>
        <cfset local.userDashboard = createObject("component", "components.page")>
        <cfset local.pages = local.userDashboard.getPages()>
        <cfif session.userRole eq "user">
            <h1>content management system</h1>
            <p class="listP">Welcome to listpage</p>
            <table border="1" class="center">
                <tr>
                    <th>Page Name</th>
                    <th>Page Description</th>
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

</body>
</html>
