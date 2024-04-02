
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h2>Login</h2>
    <cfif structKeyExists(variables, "errorMessage")>
        <p style="color:red;">#errorMessage#</p>
    </cfif>
    <form method="post">
        <label>Username:</label>
        <input type="text" name="username" required><br>
        <label>Password:</label>
        <input type="password" name="password" required><br>
        <input type="submit" name="login" value="Login">
    </form>
    <cfset user = createObject("component", "components.task27")>
    <cfif structKeyExists(form, "login")>
        <cfif user.login(form.username, form.password)>
            <cflocation url="welcome.cfm">
        <cfelse>
            <cfset errorMessage = "Invalid username or password.">
        </cfif>
    </cfif>

</body>
</html>

