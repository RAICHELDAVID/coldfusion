

<!DOCTYPE html>
<html>
<head>
    <title>Number Display</title>
</head>
<body>
    <h2>Enter a number and click Submit</h2>
    <cfoutput>
        <form name="numberForm" method="post" action="task17.cfm">
            <input type="number" id="numberInput" name="numberInput" >
            <input type="submit" value="Submit">
        </form>
    </cfoutput>
    <cfif structKeyExists(form, "numberInput")>
        <cfset numberDisplayService = createObject("component", "components.task17")>
        <cfset numbers = numberDisplayService.evenOrOddFunction(form.numberInput)>
        <cfoutput>
            <cfloop array="#numbers#" index="item">
                <p style="color: #item.color#">#item.number#</p>
            </cfloop>
        </cfoutput>
    </cfif>
    <script src="script/script.js"></script>
</body>
</html>


