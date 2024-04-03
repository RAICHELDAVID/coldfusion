<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Subscribe Form</title>
     <script src="script/jquery.js"></script>
    <script src="script/subscribe_form.js"></script>
</head>

<body>
    <form action="task24.cfm" method="post" >
        <label>First Name:</label>
        <input type="text" id="name" name="name" required>
        <br>
        <label>Email:</label>
        <input type="text" id="email" name="email" required>
        <button type="button" id="checkEmail" >Check</button><br>
        <button type="submit" id="submitBtn" disabled>Submit</button>
        
    </form>

    <cfif structKeyExists(form, "name") AND structKeyExists(form, "email")>
        <cfinvoke  method="addSubscriber" component="components/task24" returnVariable="message">
            <cfinvokeargument  name="name"  value="#form.name#">
            <cfinvokeargument  name="email"  value="#form.email#">
        </cfinvoke>
    </cfif>

</body>
</html>