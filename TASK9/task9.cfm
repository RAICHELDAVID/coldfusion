<!DOCTYPE html>
<html>
<head>
    <title>task9</title>
</head>
<body>
    <form action="#CGI.SCRIPT_NAME#" method="post">
        <label>Key:</label>
        <input type="text" name="key" required><br><br>
        <label>Value:</label>
        <input type="text" name="value" required><br><br>   
        <input type="submit" value="Submit">
    </form>
    <cfinclude  template="components/task9.cfc">
    <cfset task9=createObject("component", "components.task9")/>
    <cfset task9.structureFunction(form)/>
    <cfdump  var="#session.formDataTask9#">
</body>
</html>
