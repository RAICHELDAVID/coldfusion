<!DOCTYPE html>
<html>
<head>
    <title>task8</title>
</head>
<body>
    <form action="#CGI.SCRIPT_NAME#" method="post">
        <label>Key:</label>
        <input type="text" name="key" required><br><br>
        <label>Value:</label>
        <input type="text" name="value" required><br><br>   
        <input type="submit" value="Submit">
    </form>
    <cfinclude  template="components/task8.cfc">
    <cfset task8=createObject("component","components.task8")/>
    <cfset task8.structureFunction(form)/>
    <cfdump var="#session.formDataTask8#">
</body>
</html>
