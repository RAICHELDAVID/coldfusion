<cfset user = createObject("component", "components.task27")>

<cfif not user.isLoggedIn()>
    <cflocation url="task27.cfm">
</cfif>

<cfif structKeyExists(url, "logout")>
    <cfset user.logout()>
    <cflocation url="task27.cfm">
</cfif>

<cfoutput>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
    <h2>Welcome</h2>
    <p>Welcome, #session.username#!</p>
    <a href="welcome.cfm?logout=true">Logout</a>
</body>
</html>
</cfoutput>
