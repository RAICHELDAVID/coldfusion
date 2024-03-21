<!DOCTYPE html>
<html>
<head>
    <title>task10</title>
</head>
<body>
    <form action="#CGI.SCRIPT_NAME#" method="post">
        <label>Key:</label>
        <input type="text" name="key" required><br><br>
        <label>Value:</label>
        <input type="text" name="value" required><br><br>   
        <input type="submit" value="Submit">
    </form>
    <cfinclude  template="components/task10.cfc">
    <cfset task10=createObject("component","components.task10")/>
    <cfset task10.structureFunction(form)/>
    <cfdump var="#session.formDataTask10#">
</body>
</html>
