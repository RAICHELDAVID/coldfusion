
<cfcomponent>
    <cffunction name="viewColumn" access="remote" returntype="array">
        <cfquery name="dbColumns" datasource="demo">
            select column_name
            from information_schema.columns
            where table_name = 'exceltable'
        </cfquery>
        <cfset dbColumnNames = []>
        <cfloop query="dbColumns">
            <cfset arrayAppend(dbColumnNames, dbColumns.column_name)>
        </cfloop>
        
        <cfreturn dbColumnNames>
    </cffunction>
</cfcomponent>
