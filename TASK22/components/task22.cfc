<cfcomponent>
    <cffunction name="displayJsonAsTable" access="public" returnType="string">
        <cfargument name="jsonData" type="string" required="true">
        
        <cfset queryData = DeserializeJSON(arguments.jsonData)>
        
        <cfset var tableHTML = "">
        
        <cfset tableHTML = "<table border='1'>
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Age</th>
                                    <th>Location</th>
                                </tr>
                            </thead>
                            <tbody>">
        <cfloop array="#queryData#" index="row">
            <cfset tableHTML &= "<tr>
                                    <td>#row.Name#</td>
                                    <td>#row.Age#</td>
                                    <td>#row.LOCATION#</td>
                                </tr>">
        </cfloop>
        <cfset tableHTML &= "</tbody>
                        </table>">
        
        <cfreturn tableHTML>
    </cffunction>
</cfcomponent>