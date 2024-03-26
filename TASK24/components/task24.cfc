<cfcomponent>
    <cffunction name="checkEmail" access="remote" returntype="string">
        <cfargument name="email" type="string" required="true">
        <cfquery name="checkEmailQuery" datasource="your_datasource">
            SELECT COUNT(*) AS emailCount
            FROM subscribers
            WHERE email = <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfif checkEmailQuery.emailCount gt 0>
            <cfreturn "exists">
        <cfelse>
            <cfreturn "notexists">
        </cfif>
    </cffunction>
</cfcomponent>
