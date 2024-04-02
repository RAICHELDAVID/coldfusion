
<!DOCTYPE html>
<html>
<head>
    <title>task25</title>
</head>
<body>

    <cfinvoke component="components.task25" method="retrieveFunction" returnvariable="tableHTML"/>
    
    <table>
        <thead>
            <tr>
                <th>Word</th>
                <th>Count</th>
            </tr>
        </thead>
        <tbody>
            <cfoutput>#tableHTML#</cfoutput>
        </tbody>
    </table>

</body>
</html>

