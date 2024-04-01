
<cfcomponent>

    <cffunction  name="retrieveData" access="public">
        <cfargument  name="number" type="numeric">

        <cfquery name="personsData" datasource="demo">
            SELECT * FROM persons;
        </cfquery>
        
        <cfset fullTableRecords = "" />
        <cfloop query="personsData">
            <cfset fullTableRecords &= personsData.FirstName & " " & personsData.LastName & "<br><br>" />
        </cfloop>

        <cfquery name="nthPersonData" datasource="demo" maxrows="1">
            SELECT FirstName 
            FROM persons 
            ORDER BY (SELECT NULL)
            OFFSET  <cfqueryparam value="#arguments.number - 1#" cfsqltype="CF_SQL_INTEGER"> ROWS
            FETCH NEXT 1 ROWS ONLY;
        </cfquery>

        <cfset nthRecord = "" />
        <cfloop query="nthPersonData">
            <cfset nthRecord &= nthPersonData.FirstName />
        </cfloop>

        <cfreturn {
            fullTableRecords: fullTableRecords,
            nthRecord: nthRecord
        }>
    </cffunction>

</cfcomponent>

