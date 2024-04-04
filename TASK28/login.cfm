<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h2>Login</h2>
    <form action="login.cfm" method="post">
        <label for="username">Username:</label><br>
        <input type="text" id="username" name="username"><br>
        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password"><br><br>
        <input type="submit" value="Login">
    </form>
    
    <cfif structKeyExists(form, "username") and structKeyExists(form, "password")>
        <cfset local.userComponent = createObject("component", "components.page")>
        
        <cfset local.result = local.userComponent.validateUser(form.username, form.password)>
        
        <cfif local.result EQ "invalid user">
            <p>Invalid username or password</p>
        <cfelse>
            <cflocation url="list.cfm">
        </cfif>
    </cfif>
</body>
</html>
