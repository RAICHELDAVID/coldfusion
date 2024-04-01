<cfcomponent>
    <cffunction name = "ratingUsingCFIF" access="public">
        <cfargument name="inputNumber" type="numeric">
        <cfif arguments.inputNumber eq 1 OR arguments.inputNumber eq 2>
            <cfreturn "OK">
        <cfelseif arguments.inputNumber eq 3>
            <cfreturn "FAIR">
        <cfelseif arguments.inputNumber eq 4>
            <cfreturn "GOOD">
        <cfelse>
            <cfreturn "VERY GOOD">
        </cfif>
    </cffunction>
</cfcomponent>