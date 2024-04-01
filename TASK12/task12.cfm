
<!DOCTYPE html>
<html>
<head>
    <title>task12</title>
</head>

<body>
    <form action="task12.cfm" method="post">
        <label>enter a digit from 1 to 10</label>
        <input type="number" name="number">
        <input type="submit">
    </form> 

    <cfif structKeyExists(form, "number")>
        <cfset responseData = createObject("component", "components.task12").retrieveData(form.number) />
        <div>THE FULL TABLE RECORD IS</div>
        <cfoutput>#responseData.fullTableRecords#</cfoutput>
        <div>THE Nth RECORD IS</div>
        <cfoutput>#responseData.nthRecord#</cfoutput>
    </cfif>

</body>
</html>
