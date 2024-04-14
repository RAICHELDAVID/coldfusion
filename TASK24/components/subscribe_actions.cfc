<cfcomponent>

    <cffunction name="checkEmailExists" access="remote" returntype="any" returnformat="json">
        <cfargument name="email" type="string" required="true">
        
        <cfquery datasource="demo" name="query">
            SELECT * FROM subscribers WHERE email = <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfset count=query.recordCount>
        <cfreturn count>
    </cffunction>

    <cffunction name="addSubscriber" access="remote" returntype="any">
        <cfargument name="firstName" type="string" required="true">
        <cfargument name="email" type="string" required="true">
        
        <cfquery datasource="demo">
            INSERT INTO subscribers (firstName, email) VALUES (
                <cfqueryparam value="#arguments.firstName#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">
            )
        </cfquery>
        
        <cfreturn true>
    </cffunction>

</cfcomponent>