
<!---<cfif structKeyExists(session, "loggedIn") and session.loggedIn>
    <cflocation url="list.cfm">--->
    <!---<cfset user = createObject("component", "components.page").login()>

<cfelse>
    <!DOCTYPE html>
    <html>
    <head>
        <title>Login</title>
    </head>
    <body>
        <h2>Login</h2>
        <cfset user = createObject("component", "components.page")>
        <cfif structKeyExists(form, "login")>
            <cfset local.result = user.doLogin(form.username, form.password)>
            <cfif local.result>
                <cflocation url="list.cfm">
            <cfelse>
                <cfoutput>Invalid user</cfoutput>
            </cfif>
        </cfif>
        <form action="login.cfm" method="post">
            <label for="username">Username:</label><br>
            <input type="text" id="username" name="username"><br>
            <label for="password">Password:</label><br>
            <input type="password" id="password" name="password"><br><br>
            <input type="submit" name="login" value="Login">
        </form>
    </body>
    </html>
</cfif>--->

<cfset user = createObject("component", "components.page").login()>
    <!DOCTYPE html>
    <html>
    <head>
        <title>Login</title>
    </head>
    <body>
        <h2>Login</h2>
        <cfset user = createObject("component", "components.page")>
        <cfif structKeyExists(form, "login")>
            <cfset local.result = user.doLogin(form.username, form.password)>
            <cfif local.result>
                <cflocation url="list.cfm">
            <cfelse>
                <cfoutput>Invalid user</cfoutput>
            </cfif>
        </cfif>
        <form action="login.cfm" method="post">
            <label for="username">Username:</label><br>
            <input type="text" id="username" name="username"><br>
            <label for="password">Password:</label><br>
            <input type="password" id="password" name="password"><br><br>
            <input type="submit" name="login" value="Login">
        </form>
    </body>
    </html>