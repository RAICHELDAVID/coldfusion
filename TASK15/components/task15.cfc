
<cfcomponent>
    <cffunction name="multiply" access="public" returntype="numeric">
        <cfargument name="numbers" type="array" required="true">
        
        <cfset var result = 1>
        <cfloop from="1" to="#arrayLen(arguments.numbers)#" index="i">
            <cfset result = result * arguments.numbers[i]>
        </cfloop>
        
        <cfreturn result>
    </cffunction>
</cfcomponent>
