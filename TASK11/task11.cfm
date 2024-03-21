<!DOCTYPE html>
<html>
<head>
    <title>task11</title>
</head>

<body>
    <h3>multiply function</h3>
    <p>multiply(1,2)</p>
    <p>multiply(1,2,3)</p>
    <p>multiply(1,2,3,4)</p>

    <cfinclude  template="components/task11.cfc">
    <cfset task11=createObject("component", "components.task11")/>
    <cfset result=task11.multiply(1,2)/>
    <cfdump  var="#result#"><br>
    <cfset result=task11.multiply(1,2,3)/>
    <cfdump  var="#result#"><br>
    <cfset result=task11.multiply(1,2,3,4)/>
    <cfdump  var="#result#">
</body>
</html>