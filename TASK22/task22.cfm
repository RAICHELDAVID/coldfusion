
<!DOCTYPE html>
<html>
<head>
    <title>JSON Data Table</title>
</head>
<body>
    <cfset JsonToTable = createObject("component", "components/task22")>
    <cfset jsonData = JsonToTable.getJsonData()>
    <cfset data = deserializeJSON(jsonData)>
    <cfoutput>
        <table border="1">
            <tr>
                <th>Name</th>
                <th>Age</th>
                <th>Location</th>
            </tr>   
            <cfloop array="#data#" index="record">
                <tr>
                    <td>#record.Name#</td>
                    <td>#record.Age#</td>
                    <td>#record.LOCATION#</td>
                </tr>
            </cfloop>
        </table>
    </cfoutput>
</body>
</html>




