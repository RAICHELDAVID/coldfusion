<!DOCTYPE html>
<html>
<head>
    <title>task7</title>
</head>
<body>
    <form action="#CGI.SCRIPT_NAME#" method="post">
        <label>Key:</label>
        <input type="text" name="key" required><br><br>
        <label>Value:</label>
        <input type="text" name="value" required><br><br>   
        <input type="submit" value="Submit">
    </form>
    <cfinclude  template="components/task7.cfc">
    <cfset task7=createObject("component","components.task7")/>
    <cfset task7.structureFunction(form)/>
    <cfdump var="#session.formData#">
</body>
</html>
