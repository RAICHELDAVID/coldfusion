<cfset path = GetTemplatePath()>
<cfset cfm=path>
<cfset user = createObject("component", "components.page").login()>
<cfset user = createObject("component", "components.page")>
    <cfif structKeyExists(form, "login")>
        <cfset local.result = user.doLogin(form.username, form.password)>
        <cfif local.result>
            <cflocation url="homePage.cfm">
        <cfelse>
            <cfoutput>Invalid user</cfoutput>
        </cfif>
    </cfif>

<!---<body>
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
--->
<cfinclude  template="header.cfm">

<div class="container-fluid">
<!---<nav class="navbar bg-body-tertiary">
  <div class="container-fluid d-flex">
    <a class="navbar-brand d-flex" href="login.cfm">
      <img src="./assets/images/logo.png" alt="Logo" width="53" height="50" class="d-inline-block align-text-top">
      <p class="mt-2 bodytitle">DigifyCMS</p>
    </a>
    <a href="welcomeHome.cfm">Back</a>
  </div>
</nav>--->
    <cfinclude template="navigation.cfm" >
    <h2 class="text-center loginHeading">Welcome to the login page</h2>
    <div class="row justify-content-center">
        <form action="login.cfm" class="col-sm-5 col-xs-5" method="post">
            <div class="mb-3 row">
                <label  class="col-sm-2 col-form-label username">Username</label>
                <div>
                    <input type="text" class="form-control" id="username" name="username">
                </div>
            </div>
            <div class="mb-3 row">
                <label class="col-sm-2 col-form-label password">Password</label>
                <div>
                    <input type="password" class="form-control" id="password" name="password">
                </div>
            </div>
            <div class="mb-3 text-center">
                <button type="submit" class="btn btn-primary loginButton" name="login">Submit</button>
                <button type="submit" class="btn btn-secondary ">Cancel</button>
            </div>
        </form>
    </div>
</div>


</body>
</html>
