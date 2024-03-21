<cfcomponent>
    <cffunction name="structureFunction" access="public">
        <cfargument name="key"  required="true">
        <cfargument name="value" type="string" required="true">       
        <cfset var structData = {}>
        <cfset structData[arguments.key] = arguments.value>
        <cfreturn #structData#>
    </cffunction>
</cfcomponent>
