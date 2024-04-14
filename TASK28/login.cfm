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
<!DOCTYPE html>
<html>
<head>
    <title>DigifyCMS</title>
    <link rel="icon" href="./assets/images/logo.png" type="image/png">
    <link rel="stylesheet" href="assets/style/style.css">
    <link href="./assets/style/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
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
