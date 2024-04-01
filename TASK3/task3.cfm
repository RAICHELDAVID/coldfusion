<!DOCTYPE html>
<html>
<head>
    <title>task3</title>
</head>

<body>

    <form method="post">
        <label>enter digits</label>
        <input type="text" name="userInput">
        <input type="submit">
    </form>

    <cfif structKeyExists(form,"userInput")>
        <cfset task3 = createObject("component","components.task3")>
        <cfset result = task3.divisibleFunction(form.userInput)>
        
        <cfoutput>
            <ul>
                <cfloop collection="#result#" item="key">
                    <li>#key#</li>
                </cfloop>
            </ul>
        </cfoutput>
    </cfif>

</body>
</html>
