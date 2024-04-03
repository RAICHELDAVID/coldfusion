<cfcomponent>
    <cffunction name="checkEmailExists" access="remote" returnformat="json">
        <cfargument name="name" required="true">
        <cfargument name="email" required="true">

        <cfquery name="checkEmail" datasource="demo">
            SELECT * FROM subscribers
            WHERE email = <cfqueryparam value="#arguments.email#" cfsqltype="CF_SQL_VARCHAR">
        </cfquery>
        <cfif checkEmail.recordCount>
            <cfreturn {"message":"exists"}>
        <cfelse>
            <cfreturn {"message":"notexists"}>
        </cfif>   
    </cffunction>
    
    <cffunction name="addSubscriber" access="public">
        <cfargument name="name" required="true">
        <cfargument name="email" required="true">
        
        <cfquery name="insertData" datasource="demo">
            INSERT INTO subscribers
            VALUES (
                <cfqueryparam value="#arguments.name#" cfsqltype="CF_SQL_VARCHAR">,
                <cfqueryparam value="#arguments.email#" cfsqltype="CF_SQL_VARCHAR">
            )
        </cfquery>
        <cfreturn "email uploaded successfully">
    </cffunction>
</cfcomponent>