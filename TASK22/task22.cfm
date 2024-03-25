<!DOCTYPE html>
<html>
<head>
    <title>JSON Data Table</title>
</head>
<body>
    <h1>JSON Data in Table Format</h1>
    <cfset jsonData = '[{"Name":"saravanan","Age":27,"LOCATION":"dubai"},{"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}]'>

    <cfobject type="component" name="myCFC" component="components.task22">

    <cfoutput>#myCFC.displayJsonAsTable(jsonData)#</cfoutput>
</body>
</html>
