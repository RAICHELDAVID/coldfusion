<cfcomponent>
    <cffunction name="divisibleFunction" access="public" returntype="struct">
        <cfargument name="userInput" type="string" required="true">
        
        <cfset var result = {}>
        
        <cfloop list="#arguments.userInput#" index="index">
            <cfif index % 3 eq 0>
                <cfset result[index] = true>
            </cfif>
        </cfloop>
        
        <cfreturn result>
    </cffunction>
</cfcomponent>
