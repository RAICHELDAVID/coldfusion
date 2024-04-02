<cfcomponent>

    <cffunction name="checkEmailExists" access="remote" returnType="any">
        <cfargument name="email" type="string" required="true">
        
        <cfquery name="getResult" datasource="demo">
            SELECT COUNT(*) AS count 
            FROM subscribers 
            WHERE email = <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfdump  var="#getResult.count#">
        <cfset var result = getResult.count>
        <cfreturn result gt 0>
    </cffunction>
    
    <cffunction name="addSubscriber" access="remote" returnType="any">
        <cfargument name="firstName" type="string" required="true">
        <cfargument name="email" type="string" required="true">
        
        <cfquery datasource="demo">
            INSERT INTO subscribers (firstName, email) 
            VALUES (
                <cfqueryparam value="#arguments.firstName#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">
            )
        </cfquery>
        
        <cfreturn true>
    </cffunction>

</cfcomponent>


