
<cfcomponent>
    <cffunction name="evenOrOddFunction" access="public" returntype="array">
        <cfargument name="numberInput" type="numeric">
        <cfset var result = []>
        <cfloop from="#arguments.numberInput#" to="1" index="i" step="-1">
            <cfset color = i Mod 2 EQ 0 ? "green" : "blue">
            <cfset ArrayAppend(result, {number=i, color=color})>
        </cfloop>
        <cfreturn result>
    </cffunction>
</cfcomponent>

