<!DOCTYPE html>
<html>
<head>
    <title>DigifyCMS</title>
    <link rel="icon" href="../assets/images/logo.png" type="image/png">
    <link rel="stylesheet" href="../assets/styles/style.css">
    <link href="assets/styles/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="assets/javascript/jquery.js"></script>
    <script src="assets/javascript/common.js"></script>
</head>
<body>
<!---<div>
<h2>SIGNUP PAGE</h2>
<div class=";">
    <form action="main.cfm" id="signUpForm">
    <div>
        <label class="strName">Name</label><br>
        <input type="text" name="strName" class="strName"><br>
        </div>
        <div>
        <label class="strUserName">Username</label><br>
        <input type="text" name="strUserName" class="strUserName"><br>
        </div>
        <div>
        <label class="strPassword">Password</label><br>
        <input type="text" name="strPassword" class="strPassword"><br>
        </div>
        <div>
        <label>Choose the role</label>
        <select name="strRole" id="strRole">
            <option value="volvo">Admin</option>
            <option value="saab">Editor</option>
            <option value="opel">User</option>
        </select>
        <br><br>
        </div>
       
        <button type="submit" class="btn btn-primary" id="signUpButton">Submit</button>
        <button type="reset" class="btn btn-secondary" id="canelButton">Cancel</button>
    </form>
    </div>
    </div>--->


<div class="container-fluid">
<cfinclude  template="../controllers/main/mainAction.cfm">
    <h2 class="text-center loginHeading">SIGNUP PAGE</h2>
    <div class="row justify-content-center">
        <form action="index.cfm?action=main" class="col-sm-5 col-xs-5" method="post">
            <div class="mb-3 row">
                <label  class="col-sm-2 col-form-label username">Name</label>
                <div>
                    <input type="text" class="form-control" id="username" name="username">
                </div>
            </div>
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