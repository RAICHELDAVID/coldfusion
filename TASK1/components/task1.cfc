<cfcomponent>
<cffunction name = "ratingUsingCFIF" access="remote">
    <cfargument name="inputNumber" type="numeric">
   <cfif #arguments.inputNumber# eq 1 OR #arguments.inputNumber# eq 2>
        <cfoutput>
            #arguments.inputNumber#
        </cfoutput>
            is OK
    <cfelseif #arguments.inputNumber# eq 3>
        <cfoutput>
            #arguments.inputNumber#
        </cfoutput>
            is FAIR
    <cfelseif #arguments.inputNumber# eq 4>
        <cfoutput>
            #arguments.inputNumber#
        </cfoutput>
            is GOOD
    <cfelse>
        <cfoutput>
            #arguments.inputNumber#
        </cfoutput>
            is VERY GOOD
    </cfif>
</cffunction>
</cfcomponent>