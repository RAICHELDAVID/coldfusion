
<!DOCTYPE html>
<html>
<head>
    <title>User Dashboard</title>
    <link rel="stylesheet" href="style/style.css">
</head>
<body>
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
</body>
</html>

