<!DOCTYPE html>
<html>
<head>
    <title>task20</title>
</head>
<body>
    <form method="post">
        <cfimage action="captcha" text="#session.captchaText#" width="150" height="50" fontSize="20" /><br>
        <label for="captcha">enter Captcha:</label>
        <input type="text" name="captcha" id="captcha" required><br><br>
        <label for="email">Email:</label>
        <input type="email" name="email" id="email" required><br><br>
        <input type="submit" name="submit" value="Submit">
    </form>   
    <cfparam name="form.captcha" default="">
    <cfparam name="form.email" default="">

    <cfif structKeyExists(form, "submit")>
        <cfset captchaService = createObject("component", "components.task20")>
        <cfif captchaService.validateCaptcha(form.captcha)>
            <cfif isValid("email", form.email)>
                <h2>Email Address successfully added.</h2>
            <cfelse>
                <p>Email Address is not valid.</p>
            </cfif>
        <cfelse>
            <p>Captcha is incorrect.</p>
        </cfif>
    </cfif>
    
</body>
</html>