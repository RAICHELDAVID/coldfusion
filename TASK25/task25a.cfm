<!DOCTYPE html>
<html>
<head>
    <title>task25a</title>
</head>
<body>
    <form action="#CGI.SCRIPT_NAME#" method="post">
        <label>Enter the text</label>
        <textarea name="text"></textarea><br>
        <input type="submit" name="submit" value="Submit">
    </form>

    <cfif structKeyExists(form, "submit")>
        <cfif isDefined("form.text")>
            <cfset task25 = createObject("component", "components.task25")>
            <cfset task25.insertIntoTable(form.text)>
            <cfoutput>Words have been saved to the database.</cfoutput>
        <cfelse>
            <cfoutput>Please enter some text.</cfoutput>
        </cfif>
    </cfif>
</body>
</html>


