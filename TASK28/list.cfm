<!DOCTYPE html>
<html>
<head>
    <title>DigifyCMS</title>
    <link rel="icon" href="./assets/images/logo.png" type="image/png">
    <link rel="stylesheet" href="assets/style/style.css">
    <link href="./assets/style/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        /* Add custom CSS for table spacing */

    </style>
</head>
<body>
<div class="container-fluid">
    <nav class="navbar bg-body-tertiary">
        <div class="container-fluid d-flex">
            <a class="navbar-brand d-flex" href="welcomeHome.cfm">
                <img src="./assets/images/logo.png" alt="Logo" width="53" height="50" class="d-inline-block align-text-top">
                <p class="mt-2 bodytitle">DigifyCMS</p>
            </a>
        </div>
    </nav>
    <cfif session.userRole eq "admin" or session.userRole eq "editor">
        <p class="loginHeading text-center">Welcome to listpage</p>
        <cfset local.pageService = createObject("component", "components.page")>
        <cfif structKeyExists(url, "logout")>
            <cfset local.pageService.logout()>
            <cflocation url="login.cfm">
        </cfif>
        <cfset local.pages = local.pageService.getPages()>
        <table class=" table table-striped center">
            <tr>
                <th class="tableHeader">Page Name</th>
                <th class="tableHeader">Page Description</th>
                <th class="tableHeader">Edit</th>
                <th class="tableHeader">Delete</th>
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
        <div class="d-flex justify-content-center">
            <form action="editPage.cfm" method="post">
                <input type="submit" value="Add Page" class="btn btn-primary loginButton">
            </form>
            <form action="components/page.cfc?method=logout" method="post">
                <input type="submit" value="logout" class="btn btn-secondary ms-2">
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
</div>
</body>
</html>
