<cfcomponent>
    <cffunction  name="retrieveData" access="remote">
        <cfargument  name="number" type="numeric">
        <cfquery name="personsData" datasource="demo">
            SELECT * FROM persons;
        </cfquery>
        <cfoutput>THE FULL TABLE RECORD IS<br><br></cfoutput>
        <cfoutput query="personsData">
            #personsData.FirstName# #personsData.LastName#<br><br>
        </cfoutput>
            <!---<cftable query="personsData" startRow="1" colSpacing="3"  HTMLTable colHeaders>
                <cfcol header="<b>firstname</b>" align="Left" width="1" text="#personsData.FirstName#">
                <cfcol header="<b>lastname</b>" align="Left" width="15" text="#personsData.LastName#">
            </cftable>--->
        <cfquery name="nthPersonData" datasource="demo" maxrows="1">
            SELECT FirstName 
            FROM persons 
            ORDER BY (SELECT NULL)
            OFFSET  <cfqueryparam value = "#arguments.number - 1#" cfsqltype = "CF_SQL_INTEGER"> ROWS
            FETCH NEXT 1 ROWS ONLY;
        </cfquery>
        <cfoutput>THE Nth RECORD IS<br><br></cfoutput>
        <cfoutput query="nthPersonData">
            #nthPersonData.FirstName#
        </cfoutput>

    </cffunction>
</cfcomponent>
