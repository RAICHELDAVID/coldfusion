
<!DOCTYPE html>
<html>
<head>
    <title>task5</title>
</head>

<body>
    <cfif structKeyExists(form, "userAge") and structKeyExists(form, "motherAge")>
        <cfset userAge = form.userAge>
        <cfset motherAge = form.motherAge>
        <cfobject component="components.task5" name="ageComponent">
        <cfset ageComponent.ageFunction(userAge, motherAge)>
    <cfelse>
        <form action="task5.cfm" method="post">
            <label>enter your age</label>
            <input type="date" name="userAge"><br><br>
            <label>enter mother's age</label>
            <input type="date" name="motherAge"><br><br>
            <input type="submit">
        </form>
    </cfif>
</body>
</html>


