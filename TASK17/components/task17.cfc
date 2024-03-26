<cfcomponent>
    <cffunction name="evenOrOddFunction" access="remote">
        <cfargument name="input" type="numeric">
            <cfloop from=#arguments.input# to="1" index="i" step="-1">
                <cfif #i#%2 eq 0>
                    <cfoutput><p style="color:green">#i#</p></cfoutput>
                <cfelse>
                    <cfoutput><p style="color:blue">#i#</p></cfoutput>
                </cfif>
            </cfloop>
    </cffunction>
</cfcomponent>