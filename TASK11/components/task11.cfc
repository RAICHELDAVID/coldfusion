<cfcomponent>
    <cffunction  name="multiply" access="public">
        <cfset result = 1>
        <cfset product = "">
        <cfloop from="1" to="#arrayLen(arguments)#" index="i">
            <cfset result *= arguments[i]>
        </cfloop>
        <cfreturn result>

    </cffunction>
</cfcomponent>
