
<cfcomponent>

    <cffunction  name="retrieveData" access="public">
        <cfargument  name="number" type="numeric">
        <cfquery name="personsData" datasource="demo">
            SELECT * FROM persons;
        </cfquery>
        
        <cfset local.fullTableRecords = "" />
        <cfloop query="personsData">
            <cfset fullTableRecords &= personsData.FirstName & " " & personsData.LastName & "<br><br>" />
        </cfloop>

        <cfquery name="nthPersonData" datasource="demo" maxrows="1">
            select FirstName 
            from persons 
            order by (select null)
            offset  <cfqueryparam value="#arguments.number - 1#" cfsqltype="CF_SQL_INTEGER"> rows
            fetch next 1 rows only;
        </cfquery>

        <cfset local.nthRecord = "" />
        <cfloop query="nthPersonData">
            <cfset nthRecord &= nthPersonData.FirstName />
        </cfloop>

        <cfreturn {
            fullTableRecords: fullTableRecords,
            nthRecord: nthRecord
        }>
    </cffunction>

</cfcomponent>

