
<cfcomponent>

    <cffunction name="structureFunction" access="public" returnType="void">
        <cfargument name="key" type="string" required="true">
        <cfargument name="value" type="string" required="true">
        <cfargument name="keyValuePairs" type="struct" required="true">
        
        <cfset arguments.keyValuePairs[arguments.key] = arguments.value>
    </cffunction>

</cfcomponent>


