<cfcomponent>
    <cffunction  name="divisibleFunction" access="remote">
        <cfargument  name="userInput" type="string">
        <cfloop list="#arguments.userInput#" index="index">
            <cfif index%3 eq 0>
                <cfoutput>#index#
                </cfoutput>
            </cfif>
        </cfloop>

    </cffunction>
</cfcomponent>