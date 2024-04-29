<!DOCTYPE html>
<html>
<head>
    <title>Sign up</title>
    <link rel="stylesheet" href="assets/styles/style.css">
    <link href="assets/styles/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <!---<script src="assets/javascript/jquery.js"></script>
    <script src="assets/javascript/common.js"></script>--->
</head>
<body>
<div class="container-fluid">
    <h2 class="text-center loginHeading">SIGNUP PAGE</h2>
    <cfif isDefined('errorMessage')>
        <cfoutput><p class="text-center errorMessage">#errorMessage#</p></cfoutput>
    </cfif>
    <cfif isDefined('message')>
        <cfoutput><p class="text-center successMessage">#message#</p></cfoutput>
    </cfif>
    <p class="text-center" class="pt-2">
    <div class="row justify-content-center">
    <cfoutput>
        <form action="index.cfm?action=signUp" class="col-sm-5 col-xs-5" id="formId" method="post">
            <div class="mb-3 row">
                <label  class="col-sm-2 col-form-label strName">Name</label>
                <div>
                    <input type="text" class="form-control" id="strName" name="strName">
                </div>
            </div>
            <div class="mb-3 row">
                <label  class="col-sm-2 col-form-label strUsername">Username</label>
                <div>
                    <input type="text" class="form-control" id="strUsername" name="strUsername">
                </div>
            </div>
            <div class="mb-3 row">
                <label class="col-sm-2 col-form-label strPassword">Password</label>
                <div>
                    <input type="password" class="form-control" id="strPassword" name="strPassword">
                </div>
            </div>
            <div class="mb-3 row">
                <label class="col-sm-2 col-form-label strConfirmPassword" style="width:auto;">Confirm Password</label>
                <div>
                    <input type="password" class="form-control" id="strConfirmPassword" name="strConfirmPassword">
                </div>
            </div>
            <div class="mb-3 row">
                <label>Choose the role</label>
                <select name="intRole" id="intRole">
                    <option  selected disabled hidden>Select an Option</option>
                    <option value="1">Admin</option>
                    <option value="2">Editor</option>
                    <option value="3">User</option>
                </select>
                <br><br>
            </div>
            <div class="mb-3 text-center">
                <button type="submit" class="btn btn-primary loginButton" name="login" id="loginBtn2">Submit</button>
                <button type="reset" class="btn btn-secondary ">Cancel</button>

                
            </div>
        </form>
        </cfoutput>
    </div>
</div>
</body>
</html>

