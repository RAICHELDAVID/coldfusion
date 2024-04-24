<cfinclude  template="header.cfm">
<div class="container-fluid">
    <nav class="navbar bg-body-tertiary">
        <div class="container-fluid d-flex">
            <a class="navbar-brand d-flex">
                <img src="../assets/images/logo.png" alt="Logo" width="53" height="50" class="d-inline-block align-text-top">
                <p class="mt-2 bodytitle">DigifyCMS</p>
            </a>
            <a href="homePage.cfm">HOME</a>
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
                <button type="submit" class="btn btn-primary loginButton" name="login" id="loginBtn2">Submit</button>
                <button type="reset" class="btn btn-secondary ">Cancel</button>
                <p id="successMsg" style="color:green;" class="pt-2"> </p>
                <p id="errorMsg" style="color:red;"> </p>
                
            </div>
        </form>
    </div>
</div>

</body>
</html>
