<cfcomponent>

    <cffunction name="structureFunction" access="public" returnType="void">
        <cfargument name="key" type="string" required="true">
        <cfargument name="value" type="string" required="true">

        <!--- Ensure session scope for persistence --->
        <cfargument name="keyValuePairs" type="struct" >
        
        <!--- Store key-value pair in session scope --->
        <cfset session.keyValuePairs[arguments.key] = arguments.value>
    </cffunction>

    <!--- Function to retrieve all key-value pairs --->
    <cffunction name="getKeyValuePairs" access="public" returnType="struct">
        <cfreturn session.keyValuePairs>
    </cffunction>

</cfcomponent>
