<cfcomponent>
    <cffunction  name="isUsernameExist" returntype="query">
        <cfargument  name="strUsername" required="true" type="string">
        <cfquery name="getTable" datasource="demo">
            select username from task28_user_new
            where username=<cfqueryparam value="#arguments.strUsername#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfreturn getTable>
    </cffunction>

    <cffunction  name="saveUser" access="remote" returntype="boolean">
        <cfargument  name="strUsername" required="true" type="string">
        <cfargument  name="strPassword" required="true" type="string">
        <cfargument  name="intRole" required="true" type="integer">
        <cfargument  name="strName" required="true" type="string">
        <cfset local.hashedPassword=hash(arguments.strPassword)>
        <cftry>
            <cfquery name="addToTable" datasource="demo">
                insert into task28_user_new(username,password,roleid,Firstname)
                values (
                    <cfqueryparam value="#arguments.strUsername#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#local.hashedPassword#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.intRole#" cfsqltype="cf_sql_integer">,
                    <cfqueryparam value="#arguments.strName#" cfsqltype="cf_sql_varchar">
                
                )
            </cfquery>
            <cfreturn true>
        <cfcatch>
            <cfreturn false>
        </cfcatch>
        </cftry> 
    </cffunction>
</cfcomponent>
