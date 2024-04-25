<cfcomponent>
    <cffunction  name="isUsernameExist" returntype="query">
        <cfargument  name="strUsername" required="true" type="string">
        <cfquery name="getTable" datasource="demo">
            select username from task28_user_new
            where username=<cfqueryparam value="#arguments.strUsername#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfreturn getTable>
    </cffunction>

    <cffunction  name="insertIntoTable" access="remote" returnformat="json">
        <cfargument  name="strName" required="true" type="string">
        <cfargument  name="strUsername" required="true" type="string">
        <cfargument  name="strPassword" required="true" type="string">
        <cfargument  name="strRole" required="true" type="numeric">
        <cfset local.hashedPassword=hash(arguments.strPassword)>
        <cfquery name="addToTable" datasource="demo">
            insert into task28_user_new
            values (
                <cfqueryparam value="#arguments.strUsername#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#local.hashedPassword#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.strRole#" cfsqltype="cf_sql_integer">,
                <cfqueryparam value="#arguments.strName#" cfsqltype="cf_sql_varchar">
                
            )
        </cfquery>
        <cfreturn {"success":true,"message":"inserted!!"}>
    </cffunction>
</cfcomponent>
