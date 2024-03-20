<cfcomponent>
    <cffunction name="structureFunction" access="public">
        <cfargument name="key"  required="true">
        <cfargument name="value" type="string" required="true">
        
        <cfset var data = {}>
        <cfset data[arguments.key] = arguments.value>
        <cfreturn #data#>
    </cffunction>
</cfcomponent>
