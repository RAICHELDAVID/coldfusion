<cfset user = createObject("component", "components.page").login()>
<cfset user = createObject("component", "components.page")>
    <cfif structKeyExists(form, "login")>
        <cfset local.result = user.doLogin(form.username, form.password)>
        <cfif local.result>
            <cflocation url="list.cfm">
        <cfelse>
            <cfoutput>Invalid user</cfoutput>
        </cfif>
    </cfif>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="style/style.css">
</head>
<body>
    <div class="loginClass">
        <h1>content management system</h1>
        <p>welcome to login page</p>
        <div>
            <form action="login.cfm" method="post">
                <label for="username">Username:</label><br>
                <input type="text" id="username" name="username"><br>
                <label for="password">Password:</label><br>
                <input type="password" id="password" name="password"><br><br>
                <input type="submit" name="login" value="Login" class="loginButton">
            </form>
        </div>
</body>
</html>