<!DOCTYPE html>
<html>
<head>
    <title>task13</title>
</head>

<body>
    <form action="task13.cfm" method="post">
        <label>enter the string</label>
        <input type="text" name="input">
        <input type="submit">
    </form> 
    
    <cfif structKeyExists(form, "input")>
        <cfset task13 = createObject("component", "components.task13").countWord(form.input) />
        <cfoutput>#task13#</cfoutput>
    </cfif>
</body>
</html>