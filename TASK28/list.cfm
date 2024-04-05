

<!---<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="style/style.css">
</head>
<body>
<cfif not structKeyExists(session, "loggedIn") or not session.loggedIn>
    <cflocation url="login.cfm">
<cfelse>
    <cfif session.userRole eq "admin" or session.userRole eq "editor">
        <p>Welcome</p>
        <h3>List of Pages:</h3>
        <cfset local.pageService = createObject("component", "components.page")>
        <cfif structKeyExists(url, "logout")>
            <cfset local.pageService.logout()>
            <cflocation url="login.cfm">
        </cfif>
        <cfset local.pages = local.pageService.getPages()>
        <table border="1">
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
                        <form action="editPage.cfm" method="post">
                            <input type="hidden" name="pageid" id="pageid" value="#pageid#">
                            <input type="hidden" name="pagename" id="pagename" value="#pagename#">
                            <input type="hidden" name="pagedesc" id="pagedesc" value="#pagedesc#">
                            <input type="submit" value="Edit">
                        </form>
                    </td>
                    <td>
                        <form action="components/page.cfc?method=deletePage" method="post">
                            <input type="hidden" name="pageid" value="#pageid#">
                            <input type="submit" value="Delete">
                        </form>
                    </td>
                </tr>
            </cfoutput>
        </table>
        <form action="editPage.cfm" method="post">
            <input type="submit" value="Add Page">
        </form>
        <form action="components/page.cfc?method=logout" method="post">
            <input type="submit" value="logout">
        </form>
    <cfelse>
        <h2>User Dashboard</h2>
        <cfset local.userDashboard = createObject("component", "components.page")>
        <cfset local.pages = local.userDashboard.getPages()>
        <cfif session.userRole eq "user">
            <p>Welcome</p>
            <h3>List of Pages:</h3>
            <table border="1">
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
</cfif>
</body>
</html>--->


<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="style/style.css">
</head>
<body>

    <cfif session.userRole eq "admin" or session.userRole eq "editor">
        <p>Welcome</p>
        <h3>List of Pages:</h3>
        <cfset local.pageService = createObject("component", "components.page")>
        <cfif structKeyExists(url, "logout")>
            <cfset local.pageService.logout()>
            <cflocation url="login.cfm">
        </cfif>
        <cfset local.pages = local.pageService.getPages()>
        <table border="1">
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
                        <!---<form action="editPage.cfm" method="post">
                            <input type="hidden" name="pageid" id="pageid" value="#pageid#">
                            <input type="hidden" name="pagename" id="pagename" value="#pagename#">
                            <input type="hidden" name="pagedesc" id="pagedesc" value="#pagedesc#">
                            <input type="submit" value="Edit">
                        </form>--->                                                                                                                                     
                        <a href="editPage.cfm?pageid='#local.pages.pageid#'">edit</a>
                    </td>
                    <td>
                        <form action="components/page.cfc?method=deletePage" method="post">
                            <input type="hidden" name="pageid" value="#pageid#">
                            <input type="submit" value="Delete">
                        </form>
                    </td>
                </tr>
            </cfoutput>
        </table>
        <form action="editPage.cfm" method="post">
            <input type="submit" value="Add Page">
        </form>
        <form action="components/page.cfc?method=logout" method="post">
            <input type="submit" value="logout">
        </form>
    <cfelse>
        <h2>User Dashboard</h2>
        <cfset local.userDashboard = createObject("component", "components.page")>
        <cfset local.pages = local.userDashboard.getPages()>
        <cfif session.userRole eq "user">
            <p>Welcome</p>
            <h3>List of Pages:</h3>
            <table border="1">
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